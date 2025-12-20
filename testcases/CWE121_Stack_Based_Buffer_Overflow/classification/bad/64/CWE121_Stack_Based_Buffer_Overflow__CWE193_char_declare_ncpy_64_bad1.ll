define void @anon0() local_unnamed_addr {
dec_label_pc_3cfe6:
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-27 to ptr
  store ptr %1, ptr %stack_var_-40, align 8
  store i8 0, ptr %1, align 8
  %2 = bitcast ptr %stack_var_-40 to ptr
  call void @anon1(ptr nonnull %2)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_3d031, label %dec_label_pc_3d02c

dec_label_pc_3d02c:                               ; preds = %dec_label_pc_3cfe6
  call void @__stack_chk_fail()
  br label %dec_label_pc_3d031

dec_label_pc_3d031:                               ; preds = %dec_label_pc_3d02c, %dec_label_pc_3cfe6
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_3d095:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = add i32 %2, 1
  %4 = call ptr @strncpy(ptr %dataVoidPtr, ptr nonnull %1, i32 %3)
  call void @printLine(ptr %dataVoidPtr)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_3d123, label %dec_label_pc_3d11e

dec_label_pc_3d11e:                               ; preds = %dec_label_pc_3d095
  call void @__stack_chk_fail()
  br label %dec_label_pc_3d123

dec_label_pc_3d123:                               ; preds = %dec_label_pc_3d11e, %dec_label_pc_3d095
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

