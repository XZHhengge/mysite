# Generated by Django 2.1.4 on 2019-01-04 11:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0006_auto_20190102_2112'),
    ]

    operations = [
        migrations.AlterField(
            model_name='blog',
            name='blog_url',
            field=models.CharField(blank=True, max_length=50, null=True, verbose_name='博客链接'),
        ),
    ]
