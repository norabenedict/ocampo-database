from django.contrib import admin

# Register your models here.

from django.contrib import admin
from ocampo.people.models import People, Book, Occupation, Correspondence, DescriptiveBibliography, Place, Repository, Contribution, CreatorContribution, ContributionRolePersonContribution, Issue,  Periodicals, Event, CreatorBook

class PeopleAdmin(admin.ModelAdmin):
    list_display = ('name',)
    search_fields = ['name',]
class BookAdmin(admin.ModelAdmin):
    pass
class ContributionRolePersonContributionAdmin(admin.ModelAdmin):
    pass
class CreatorContributionAdmin(admin.ModelAdmin):
    pass
class OccupationAdmin(admin.ModelAdmin):
    pass
class ContributionAdmin(admin.ModelAdmin):
    pass
class CorrespondenceAdmin(admin.ModelAdmin):
    pass
class DescriptiveBibliographyAdmin(admin.ModelAdmin):
    pass
class PlaceAdmin(admin.ModelAdmin):
    pass
class RepositoryAdmin(admin.ModelAdmin):
    pass
class IssueAdmin(admin.ModelAdmin):
    pass
class PeriodicalsAdmin(admin.ModelAdmin):
    pass
class EventAdmin(admin.ModelAdmin):
    pass
class CreatorBookAdmin(admin.ModelAdmin):
    pass

admin.site.register(People, PeopleAdmin)
admin.site.register(Book, BookAdmin)
admin.site.register(ContributionRolePersonContribution, ContributionRolePersonContributionAdmin)
admin.site.register(CreatorContribution, CreatorContributionAdmin)
admin.site.register(Occupation, OccupationAdmin)
admin.site.register(Contribution, ContributionAdmin)
admin.site.register(Correspondence, CorrespondenceAdmin)
admin.site.register(DescriptiveBibliography, DescriptiveBibliographyAdmin)
admin.site.register(Place, PlaceAdmin)
admin.site.register(Repository, RepositoryAdmin)
admin.site.register(Issue, IssueAdmin)
admin.site.register(Periodicals, PeriodicalsAdmin)
admin.site.register(Event, EventAdmin)
admin.site.register(CreatorBook, CreatorBookAdmin)
