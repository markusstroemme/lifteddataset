define void @anon1() local_unnamed_addr {
dec_label_pc_2baaf:
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_2baf3, label %dec_label_pc_2bae9

dec_label_pc_2bae9:                               ; preds = %dec_label_pc_2baaf
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2baf3:                               ; preds = %dec_label_pc_2baaf
  store i8 0, ptr %2, align 1
  call void @anon0(ptr nonnull %stack_var_-24)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_2bb1b, label %dec_label_pc_2bb16

dec_label_pc_2bb16:                               ; preds = %dec_label_pc_2baf3
  call void @__stack_chk_fail()
  br label %dec_label_pc_2bb1b

dec_label_pc_2bb1b:                               ; preds = %dec_label_pc_2bb16, %dec_label_pc_2baf3
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_2bbd1:
  %0 = ptrtoint ptr %dataPtr to i64
  %stack_var_-120 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = bitcast ptr %dataPtr to ptr
  %4 = bitcast ptr %stack_var_-120 to ptr
  %5 = call ptr @strncpy(ptr %3, ptr nonnull %4, i32 99)
  %6 = add i64 %0, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  call void @printLine(ptr %3)
  %8 = bitcast ptr %dataPtr to ptr
  call void @free(ptr %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %1, %9
  br i1 %10, label %dec_label_pc_2bc6e, label %dec_label_pc_2bc69

dec_label_pc_2bc69:                               ; preds = %dec_label_pc_2bbd1
  call void @__stack_chk_fail()
  br label %dec_label_pc_2bc6e

dec_label_pc_2bc6e:                               ; preds = %dec_label_pc_2bc69, %dec_label_pc_2bbd1
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

