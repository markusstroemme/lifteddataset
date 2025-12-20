@global_var_9c070 = external global ptr
@global_var_682c8 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_153de:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = load ptr, ptr @global_var_9c070, align 8
  %3 = call i32 (ptr, ptr, ...) @fscanf(ptr %2, ptr @global_var_682c8)
  %4 = call i32 @globalReturnsTrueOrFalse()
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_154e1, label %dec_label_pc_154dc

dec_label_pc_154dc:                               ; preds = %dec_label_pc_153de
  call void @__stack_chk_fail()
  br label %dec_label_pc_154e1

dec_label_pc_154e1:                               ; preds = %dec_label_pc_154dc, %dec_label_pc_153de
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_55105:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

