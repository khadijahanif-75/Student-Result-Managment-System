import random
from datetime import datetime

class DescriptionGenerator:
    def __init__(self):
        self.templates = {
            'default': [
                "{course_name} is a {duration} program covering key concepts and practical applications.",
                "This {duration} course in {course_name} provides comprehensive training for students.",
                "Enroll in our {course_name} ({duration}) to gain valuable skills and knowledge."
            ],
            'short': [
                "{course_name} - {duration} course",
                "{duration} program in {course_name}",
                "{course_name} training ({duration})"
            ],
            'detailed': [
                """Course: {course_name}
Duration: {duration}
Fees: {charges}

Description:
This program offers in-depth training in {course_name} over {duration}. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.""",
                
                """{course_name} Course Details:
- Duration: {duration}
- Fees: {charges}

Program Overview:
Our {course_name} course provides comprehensive education through a structured {duration} curriculum designed for optimal learning outcomes."""
            ]
        }
        
        # Keywords that might appear in course names with specialized templates
        self.special_keywords = {
            'advanced': "Advanced-level training in {course_name} ({duration}) designed for professionals.",
            'basic': "Introductory {course_name} course ({duration}) covering fundamental concepts.",
            'certificate': "{course_name} Certificate Program ({duration}) leading to professional certification.",
            'diploma': "{course_name} Diploma Course ({duration}) with comprehensive curriculum."
        }
    
    def generate(self, course_name, duration, charges=None, style='default'):
        """Generate a course description based on templates"""
        # Check for special keywords in course name
        for keyword, template in self.special_keywords.items():
            if keyword.lower() in course_name.lower():
                return template.format(
                    course_name=course_name,
                    duration=duration,
                    charges=charges or 'Contact for pricing'
                )
        
        # Select appropriate template group
        template_group = self.templates.get(style, self.templates['default'])
        
        # Select random template from group
        template = random.choice(template_group)
        
        # Format with course details
        return template.format(
            course_name=course_name,
            duration=duration,
            charges=charges or 'Contact for pricing'
        )
