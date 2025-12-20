@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2fab5:
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge24.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_2fb46.preheader, label %dec_label_pc_2fb03

dec_label_pc_2fb46.preheader:                     ; preds = %dec_label_pc_2fab5
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = bitcast ptr %1 to ptr
  %6 = add i64 %4, -816
  %7 = add i64 %4, -812
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_2fb1a

dec_label_pc_2fb03:                               ; preds = %dec_label_pc_2fab5
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2fb1a:                               ; preds = %dec_label_pc_2fb1a, %dec_label_pc_2fb46.preheader
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %8 = mul i64 %storemerge24.reload, 8
  %9 = add i64 %8, %6
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 8
  %11 = add i64 %7, %8
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 4
  %13 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond5 = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge24.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_2fb90.preheader, label %dec_label_pc_2fb1a

dec_label_pc_2fb90.preheader:                     ; preds = %dec_label_pc_2fb1a
  %14 = ptrtoint ptr %1 to i64
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_2fb5d

dec_label_pc_2fb5d:                               ; preds = %dec_label_pc_2fb5d, %dec_label_pc_2fb90.preheader
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %15 = mul i64 %storemerge3.reload, 8
  %16 = add i64 %15, %14
  %17 = add i64 %15, %6
  %18 = inttoptr i64 %17 to ptr
  %19 = load i64, ptr %18, align 8
  %20 = inttoptr i64 %16 to ptr
  store i64 %19, ptr %20, align 8
  %21 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %21, 100
  store i64 %21, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2fb9a, label %dec_label_pc_2fb5d

dec_label_pc_2fb9a:                               ; preds = %dec_label_pc_2fb5d
  call void @printStructLine(ptr %5)
  call void @free(ptr %1)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  br i1 %23, label %dec_label_pc_2fbcd, label %dec_label_pc_2fbc8

dec_label_pc_2fbc8:                               ; preds = %dec_label_pc_2fb9a
  call void @__stack_chk_fail()
  br label %dec_label_pc_2fbcd

dec_label_pc_2fbcd:                               ; preds = %dec_label_pc_2fbc8, %dec_label_pc_2fb9a
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

