from app.models import WatchList, StreamPlatform, Review
from rest_framework import serializers
from django.db.models import Avg
from app.models import WatchList


class ReviewSerializer(serializers.ModelSerializer):
    reviewer = serializers.StringRelatedField(read_only=True)

    class Meta:
        model = Review
        exclude = ('watchlist',)


class StreamPlatformSerializer(serializers.HyperlinkedModelSerializer):
    watchlist = serializers.HyperlinkedRelatedField(
        many=True,
        view_name='watchlist-detail',
        read_only=True
    )

    class Meta:
        model = StreamPlatform
        fields = "__all__"
        extra_kwargs = {
                'authors': {'required': False},
                'about': {'required': False},
                'website': {'required': False},

            }


class WatchListSerializer(serializers.ModelSerializer):
    platforms = StreamPlatformSerializer(many=True, write_only=True)
    avg_rating = serializers.SerializerMethodField()
    rating_count = serializers.SerializerMethodField()
    
    class Meta:
        model = WatchList
        fields = "__all__"

    def get_avg_rating(self, obj):
        res =  Review.objects.filter(watchlist__id=obj.id, active=True).aggregate(Avg('rating'))
        return res["rating__avg"] or 0

    def get_rating_count(self, obj):
        return Review.objects.filter(watchlist__id=obj.id, active=True).count()

    def create(self, validated_data):
        platforms = validated_data.pop('platforms')
        wl = WatchList.objects.create(**validated_data)
        for platform in platforms:
            platform_data = StreamPlatform.objects.get(**platform)
            wl.platforms.add(platform_data)
        return wl

    def update(self, instance, validated_data):
        platforms = validated_data.pop('platforms')

        instance.title = validated_data.get('title', instance.title)
        instance.storyline = validated_data.get('storyline', instance.storyline)
        instance.active = validated_data.get('active', instance.active)
        instance.save()

        instance.platforms.clear()
        for platform in platforms:
            platform_data = StreamPlatform.objects.get(**platform)
            instance.platforms.add(platform_data)


        return instance


        
