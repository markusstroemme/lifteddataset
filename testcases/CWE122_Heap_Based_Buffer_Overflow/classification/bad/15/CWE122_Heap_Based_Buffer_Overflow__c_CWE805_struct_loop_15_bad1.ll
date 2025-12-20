@global_var_7c84a = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_30c93:
  %storemerge3.reg2mem = alloca ptr, align 8
  %storemerge24.reg2mem = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 400)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_30d1b.preheader, label %dec_label_pc_30cd7

dec_label_pc_30d1b.preheader:                     ; preds = %dec_label_pc_30c93
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = bitcast ptr %1 to ptr
  %6 = add i64 %4, -816
  %7 = add i64 %4, -812
  store ptr null, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_30cef

dec_label_pc_30cd7:                               ; preds = %dec_label_pc_30c93
  call void @exit(i32 -1)
  unreachable

dec_label_pc_30cef:                               ; preds = %dec_label_pc_30d1b.preheader, %dec_label_pc_30cef
  %storemerge24.reload = load ptr, ptr %storemerge24.reg2mem, align 8
  %8 = ptrtoint ptr %storemerge24.reload to i64
  %9 = mul i64 %8, 8
  %10 = add i64 %9, %6
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 8
  %12 = add i64 %7, %9
  %13 = inttoptr i64 %12 to ptr
  store i32 0, ptr %13, align 4
  %14 = add i64 %8, 1
  %15 = inttoptr i64 %14 to ptr
  %16 = icmp ugt ptr %15, inttoptr (i64 99 to ptr)
  store ptr %15, ptr %storemerge24.reg2mem, align 8
  br i1 %16, label %dec_label_pc_30d65.preheader, label %dec_label_pc_30cef

dec_label_pc_30d65.preheader:                     ; preds = %dec_label_pc_30cef
  %17 = ptrtoint ptr %1 to i64
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_30d32

dec_label_pc_30d32:                               ; preds = %dec_label_pc_30d65.preheader, %dec_label_pc_30d32
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %18 = ptrtoint ptr %storemerge3.reload to i64
  %19 = mul i64 %18, 8
  %20 = add i64 %19, %17
  %21 = add i64 %19, %6
  %22 = inttoptr i64 %21 to ptr
  %23 = load i64, ptr %22, align 8
  %24 = inttoptr i64 %20 to ptr
  store i64 %23, ptr %24, align 8
  %25 = add i64 %18, 1
  %26 = inttoptr i64 %25 to ptr
  %27 = icmp ugt ptr %26, inttoptr (i64 99 to ptr)
  store ptr %26, ptr %storemerge3.reg2mem, align 8
  br i1 %27, label %dec_label_pc_30d6f, label %dec_label_pc_30d32

dec_label_pc_30d6f:                               ; preds = %dec_label_pc_30d32
  call void @printStructLine(ptr %5)
  call void @free(ptr %1)
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %0, %28
  br i1 %29, label %dec_label_pc_30da2, label %dec_label_pc_30d9d

dec_label_pc_30d9d:                               ; preds = %dec_label_pc_30d6f
  call void @__stack_chk_fail()
  br label %dec_label_pc_30da2

dec_label_pc_30da2:                               ; preds = %dec_label_pc_30d9d, %dec_label_pc_30d6f
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

