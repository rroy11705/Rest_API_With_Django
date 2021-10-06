from app.models import WatchList, StreamPlatform, Review
from rest_framework import serializers


class ReviewSerializer(serializers.ModelSerializer):
    reviewer = serializers.StringRelatedField(read_only=True)

    class Meta:
        model = Review
        exclude = ('watchlist',)

class WatchListSerializer(serializers.ModelSerializer):
    platforms = serializers.CharField(source='platforms.name', read_only=True)

    class Meta:
        model = WatchList
        fields = "__all__"


class StreamPlatformSerializer(serializers.HyperlinkedModelSerializer):
    watchlist = serializers.HyperlinkedRelatedField(
        many=True,
        read_only=True,
        view_name='watchlist-detail'
    )

    class Meta:
        model = StreamPlatform
        fields = "__all__"
        
