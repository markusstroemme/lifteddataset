define void @anon1() local_unnamed_addr {
dec_label_pc_272b4:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_272e7, label %dec_label_pc_272dd

dec_label_pc_272dd:                               ; preds = %dec_label_pc_272b4
  call void @exit(i32 -1)
  unreachable

dec_label_pc_272e7:                               ; preds = %dec_label_pc_272b4
  %3 = bitcast ptr %0 to ptr
  store i8 0, ptr %3, align 1
  %4 = ptrtoint ptr %0 to i64
  call void @anon0(i64 %4)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_273ab:
  %stack_var_-120 = alloca i64, align 8
  %0 = inttoptr i64 %myStruct to ptr
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = bitcast ptr %stack_var_-120 to ptr
  %4 = call ptr @strncat(ptr %0, ptr nonnull %3, i32 100)
  call void @printLine(ptr %0)
  %5 = inttoptr i64 %myStruct to ptr
  call void @free(ptr %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %1, %6
  br i1 %7, label %dec_label_pc_2743a, label %dec_label_pc_27435

dec_label_pc_27435:                               ; preds = %dec_label_pc_273ab
  call void @__stack_chk_fail()
  br label %dec_label_pc_2743a

dec_label_pc_2743a:                               ; preds = %dec_label_pc_27435, %dec_label_pc_273ab
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

