from django.db.models import fields
from app.models import WatchList, StreamPlatform, Review
from rest_framework import serializers


# # Model Serializer

class ReviewSerializer(serializers.ModelSerializer):
    reviewer = serializers.StringRelatedField(read_only=True)

    class Meta:
        model = Review
        exclude = ('watchlist',)
        # fields = "__all__"

class WatchListSerializer(serializers.ModelSerializer):
    reviews = ReviewSerializer(many=True, read_only=True)
    # platforms = serializers.CharField(source='platforms.name')

    class Meta:
        model = WatchList
        fields = "__all__"


# class StreamPlatformSerializer(serializers.ModelSerializer):
#     # watchlist = WatchListSerializer(many=True, read_only=True)
#     # watchlist = serializers.StringRelatedField(many=True, read_only=True)
#     # watchlist = serializers.PrimaryKeyRelatedField(many=True, read_only=True)
#     watchlist = serializers.HyperlinkedRelatedField(
#         many=True,
#         read_only=True,
#         view_name='watchlist-details'
#     )

#     class Meta:
#         model = StreamPlatform
#         fields = "__all__"


class StreamPlatformSerializer(serializers.HyperlinkedModelSerializer):
    watchlist = serializers.HyperlinkedRelatedField(
        many=True,
        read_only=True,
        view_name='watchlist-detail'
    )

    class Meta:
        model = StreamPlatform
        fields = "__all__"


# # View Serializer

# class MovieSerializer(serializers.Serializer):
#     id = serializers.IntegerField(read_only=True)
#     name = serializers.CharField()
#     description = serializers.CharField()
#     active = serializers.BooleanField()

#     def create(self, validated_data):
#         return Movie.objects.create(**validated_data)

#     def update(self, instance, validated_data):
#         instance.name = validated_data.get('name', instance.name)
#         instance.description = validated_data.get('description', instance.description)
#         instance.active = validated_data.get('active', instance.active)
#         instance.save()
#         return instance

#     def validate(self, data):
#         if data['name'] == data['description']:
#             raise serializers.ValidationError("Title and Description should be different!")
#         else:
#             return data

#     def validate_name(self, value):
#         if len(value) < 1:
#             raise serializers.ValidationError("Name is too short!")
#         else:
#             return value

#     def validate_description(self, value):
#         if len(value) < 10:
#             raise serializers.ValidationError("Description is too short!")
#         else:
#             return value
