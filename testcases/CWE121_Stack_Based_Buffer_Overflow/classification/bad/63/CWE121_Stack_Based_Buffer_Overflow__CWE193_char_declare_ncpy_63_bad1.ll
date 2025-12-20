define void @anon0() local_unnamed_addr {
dec_label_pc_3ce27:
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-27 to ptr
  store ptr %1, ptr %stack_var_-40, align 8
  store i8 0, ptr %1, align 8
  call void @anon1(ptr nonnull %stack_var_-40)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_3ce72, label %dec_label_pc_3ce6d

dec_label_pc_3ce6d:                               ; preds = %dec_label_pc_3ce27
  call void @__stack_chk_fail()
  br label %dec_label_pc_3ce72

dec_label_pc_3ce72:                               ; preds = %dec_label_pc_3ce6d, %dec_label_pc_3ce27
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_3ced6:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = add i32 %2, 1
  %4 = bitcast ptr %dataPtr to ptr
  %5 = call ptr @strncpy(ptr %4, ptr nonnull %1, i32 %3)
  call void @printLine(ptr %4)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_3cf5c, label %dec_label_pc_3cf57

dec_label_pc_3cf57:                               ; preds = %dec_label_pc_3ced6
  call void @__stack_chk_fail()
  br label %dec_label_pc_3cf5c

dec_label_pc_3cf5c:                               ; preds = %dec_label_pc_3cf57, %dec_label_pc_3ced6
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

