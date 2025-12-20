@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_30439:
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge24.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %2, label %dec_label_pc_30495, label %dec_label_pc_30470

dec_label_pc_30470:                               ; preds = %dec_label_pc_30439
  br i1 %5, label %dec_label_pc_304ba, label %dec_label_pc_3048b

dec_label_pc_3048b:                               ; preds = %dec_label_pc_30470
  call void @exit(i32 -1)
  unreachable

dec_label_pc_30495:                               ; preds = %dec_label_pc_30439
  br i1 %5, label %dec_label_pc_304ba, label %dec_label_pc_304b0

dec_label_pc_304b0:                               ; preds = %dec_label_pc_30495
  call void @exit(i32 -1)
  unreachable

dec_label_pc_304ba:                               ; preds = %dec_label_pc_30495, %dec_label_pc_30470
  %6 = ptrtoint ptr %stack_var_-8 to i64
  %7 = bitcast ptr %3 to ptr
  %8 = add i64 %6, -816
  %9 = add i64 %6, -812
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_304c7

dec_label_pc_304c7:                               ; preds = %dec_label_pc_304c7, %dec_label_pc_304ba
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %10 = mul i64 %storemerge24.reload, 8
  %11 = add i64 %10, %8
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 8
  %13 = add i64 %9, %10
  %14 = inttoptr i64 %13 to ptr
  store i32 0, ptr %14, align 4
  %15 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond5 = icmp eq i64 %15, 100
  store i64 %15, ptr %storemerge24.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_3053d.preheader, label %dec_label_pc_304c7

dec_label_pc_3053d.preheader:                     ; preds = %dec_label_pc_304c7
  %16 = ptrtoint ptr %3 to i64
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_3050a

dec_label_pc_3050a:                               ; preds = %dec_label_pc_3050a, %dec_label_pc_3053d.preheader
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %17 = mul i64 %storemerge3.reload, 8
  %18 = add i64 %17, %16
  %19 = add i64 %17, %8
  %20 = inttoptr i64 %19 to ptr
  %21 = load i64, ptr %20, align 8
  %22 = inttoptr i64 %18 to ptr
  store i64 %21, ptr %22, align 8
  %23 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %23, 100
  store i64 %23, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_30547, label %dec_label_pc_3050a

dec_label_pc_30547:                               ; preds = %dec_label_pc_3050a
  call void @printStructLine(ptr %7)
  call void @free(ptr %3)
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %0, %24
  br i1 %25, label %dec_label_pc_3057a, label %dec_label_pc_30575

dec_label_pc_30575:                               ; preds = %dec_label_pc_30547
  call void @__stack_chk_fail()
  br label %dec_label_pc_3057a

dec_label_pc_3057a:                               ; preds = %dec_label_pc_30575, %dec_label_pc_30547
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_65a35:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_7c84a, i64 %7, i64 %6)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_65cd4:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

