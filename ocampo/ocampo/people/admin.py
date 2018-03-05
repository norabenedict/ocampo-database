from django.contrib import admin

# Register your models here.

from django.contrib import admin
from ocampo.people.models import People, Book, Occupation, Correspondence, DescriptiveBibliography, Place

class PeopleAdmin(admin.ModelAdmin):
    pass
class BookAdmin(admin.ModelAdmin):
    pass
#class ContributionRolePersonContributionAdmin(admin.ModelAdmin):
    pass
#class ContributionRoleTypeAdmin(admin.ModelAdmin):
    pass
class OccupationAdmin(admin.ModelAdmin):
    pass
#class ContributionAdmin(admin.ModelAdmin):
    pass
#class CorrespondenceAdmin(admin.ModelAdmin):
    pass
class DescriptiveBibliographyAdmin(admin.ModelAdmin):
    pass
class PlaceAdmin(admin.ModelAdmin):
    pass

admin.site.register(People, PeopleAdmin)
admin.site.register(Book, BookAdmin)
#admin.site.register(ContributionRolePersonContribution, ContributionRolePersonContributionAdmin)
#admin.site.register(ContributionRoleType, ContributionRoleTypeAdmin)
admin.site.register(Occupation, OccupationAdmin)
#admin.site.register(Contribution, ContributionAdmin)
#admin.site.register(Correspondence, CorrespondenceAdmin)
admin.site.register(DescriptiveBibliography, DescriptiveBibliographyAdmin)
admin.site.register(Place, PlaceAdmin)
