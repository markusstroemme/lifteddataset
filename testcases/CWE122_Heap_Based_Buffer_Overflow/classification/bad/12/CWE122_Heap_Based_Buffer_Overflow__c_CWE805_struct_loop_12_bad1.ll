@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_302f6:
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge24.reg2mem = alloca i64, align 8
  %stack_var_-848.0.in.reg2mem = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_30352, label %dec_label_pc_3032d

dec_label_pc_3032d:                               ; preds = %dec_label_pc_302f6
  %3 = call ptr @malloc(i32 400)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-848.0.in.reg2mem, align 8
  br i1 %5, label %dec_label_pc_30377, label %dec_label_pc_30348

dec_label_pc_30348:                               ; preds = %dec_label_pc_3032d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_30352:                               ; preds = %dec_label_pc_302f6
  %6 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i1 %7, false
  store ptr %6, ptr %stack_var_-848.0.in.reg2mem, align 8
  br i1 %8, label %dec_label_pc_30377, label %dec_label_pc_3036d

dec_label_pc_3036d:                               ; preds = %dec_label_pc_30352
  call void @exit(i32 -1)
  unreachable

dec_label_pc_30377:                               ; preds = %dec_label_pc_30352, %dec_label_pc_3032d
  %9 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-848.0.in.reload = load ptr, ptr %stack_var_-848.0.in.reg2mem, align 8
  %10 = add i64 %9, -816
  %11 = add i64 %9, -812
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_30384

dec_label_pc_30384:                               ; preds = %dec_label_pc_30384, %dec_label_pc_30377
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %12 = mul i64 %storemerge24.reload, 8
  %13 = add i64 %12, %10
  %14 = inttoptr i64 %13 to ptr
  store i32 0, ptr %14, align 8
  %15 = add i64 %11, %12
  %16 = inttoptr i64 %15 to ptr
  store i32 0, ptr %16, align 4
  %17 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond5 = icmp eq i64 %17, 100
  store i64 %17, ptr %storemerge24.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_303fa.preheader, label %dec_label_pc_30384

dec_label_pc_303fa.preheader:                     ; preds = %dec_label_pc_30384
  %18 = ptrtoint ptr %stack_var_-848.0.in.reload to i64
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_303c7

dec_label_pc_303c7:                               ; preds = %dec_label_pc_303c7, %dec_label_pc_303fa.preheader
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %19 = mul i64 %storemerge3.reload, 8
  %20 = add i64 %19, %18
  %21 = add i64 %19, %10
  %22 = inttoptr i64 %21 to ptr
  %23 = load i64, ptr %22, align 8
  %24 = inttoptr i64 %20 to ptr
  store i64 %23, ptr %24, align 8
  %25 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %25, 100
  store i64 %25, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_30404, label %dec_label_pc_303c7

dec_label_pc_30404:                               ; preds = %dec_label_pc_303c7
  %stack_var_-848.0 = bitcast ptr %stack_var_-848.0.in.reload to ptr
  call void @printStructLine(ptr %stack_var_-848.0)
  call void @free(ptr %stack_var_-848.0.in.reload)
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %0, %26
  br i1 %27, label %dec_label_pc_30437, label %dec_label_pc_30432

dec_label_pc_30432:                               ; preds = %dec_label_pc_30404
  call void @__stack_chk_fail()
  br label %dec_label_pc_30437

dec_label_pc_30437:                               ; preds = %dec_label_pc_30432, %dec_label_pc_30404
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

