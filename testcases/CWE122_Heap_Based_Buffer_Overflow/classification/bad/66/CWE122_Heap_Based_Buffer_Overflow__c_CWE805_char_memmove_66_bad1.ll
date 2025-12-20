define void @anon0() local_unnamed_addr {
dec_label_pc_22359:
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 50)
  %2 = bitcast ptr %1 to ptr
  %3 = insertvalue [5 x ptr] undef, ptr %2, 0
  store [5 x ptr] %3, ptr %dataArray_-64, align 8
  %4 = bitcast ptr %dataArray_-64 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_2239b, label %dec_label_pc_22391

dec_label_pc_22391:                               ; preds = %dec_label_pc_22359
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2239b:                               ; preds = %dec_label_pc_22359
  %8 = inttoptr i64 %5 to ptr
  store i8 0, ptr %8, align 1
  %9 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_223cb, label %dec_label_pc_223c6

dec_label_pc_223c6:                               ; preds = %dec_label_pc_2239b
  call void @__stack_chk_fail()
  br label %dec_label_pc_223cb

dec_label_pc_223cb:                               ; preds = %dec_label_pc_223c6, %dec_label_pc_2239b
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_22456:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = inttoptr i64 %4 to ptr
  %7 = call ptr @memmove(ptr %6, ptr nonnull %stack_var_-120, i32 100)
  %8 = add i64 %4, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  %10 = inttoptr i64 %4 to ptr
  call void @printLine(ptr %10)
  call void @free(ptr %6)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_224f4, label %dec_label_pc_224ef

dec_label_pc_224ef:                               ; preds = %dec_label_pc_22456
  call void @__stack_chk_fail()
  br label %dec_label_pc_224f4

dec_label_pc_224f4:                               ; preds = %dec_label_pc_224ef, %dec_label_pc_22456
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

