# Generated by Django 2.1.4 on 2019-01-02 20:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0003_auto_20190102_2006'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bolgbanner',
            name='author',
            field=models.CharField(blank=True, max_length=30, verbose_name='作者'),
        ),
    ]
