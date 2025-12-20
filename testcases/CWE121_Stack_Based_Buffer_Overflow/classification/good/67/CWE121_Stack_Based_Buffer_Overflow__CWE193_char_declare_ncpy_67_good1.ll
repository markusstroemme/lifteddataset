define void @anon1() local_unnamed_addr {
dec_label_pc_3d59c:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-27 to ptr
  store i8 0, ptr %1, align 8
  %2 = ptrtoint ptr %stack_var_-27 to i64
  call void @anon0(i64 %2)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_3d5ef, label %dec_label_pc_3d5ea

dec_label_pc_3d5ea:                               ; preds = %dec_label_pc_3d59c
  call void @__stack_chk_fail()
  br label %dec_label_pc_3d5ef

dec_label_pc_3d5ef:                               ; preds = %dec_label_pc_3d5ea, %dec_label_pc_3d59c
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_3d68b:
  %stack_var_-27 = alloca i64, align 8
  %0 = inttoptr i64 %myStruct to ptr
  %1 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = add i32 %3, 1
  %5 = call ptr @strncpy(ptr %0, ptr nonnull %2, i32 %4)
  call void @printLine(ptr %0)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %1, %6
  br i1 %7, label %dec_label_pc_3d70e, label %dec_label_pc_3d709

dec_label_pc_3d709:                               ; preds = %dec_label_pc_3d68b
  call void @__stack_chk_fail()
  br label %dec_label_pc_3d70e

dec_label_pc_3d70e:                               ; preds = %dec_label_pc_3d709, %dec_label_pc_3d68b
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

