@global_var_7c84a = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_340db:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 400)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_3411f, label %dec_label_pc_34115

dec_label_pc_34115:                               ; preds = %dec_label_pc_340db
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3411f:                               ; preds = %dec_label_pc_340db
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_34140, label %dec_label_pc_3413b

dec_label_pc_3413b:                               ; preds = %dec_label_pc_3411f
  call void @__stack_chk_fail()
  br label %dec_label_pc_34140

dec_label_pc_34140:                               ; preds = %dec_label_pc_3413b, %dec_label_pc_3411f
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_341be:
  %storemerge3.reg2mem = alloca ptr, align 8
  %storemerge24.reg2mem = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, -816
  %3 = add i64 %0, -812
  store ptr null, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_3420f

dec_label_pc_3420f:                               ; preds = %dec_label_pc_341be, %dec_label_pc_3420f
  %storemerge24.reload = load ptr, ptr %storemerge24.reg2mem, align 8
  %4 = ptrtoint ptr %storemerge24.reload to i64
  %5 = mul i64 %4, 8
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 8
  %8 = add i64 %3, %5
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = add i64 %4, 1
  %11 = inttoptr i64 %10 to ptr
  %12 = icmp ugt ptr %11, inttoptr (i64 99 to ptr)
  store ptr %11, ptr %storemerge24.reg2mem, align 8
  br i1 %12, label %dec_label_pc_34285.preheader, label %dec_label_pc_3420f

dec_label_pc_34285.preheader:                     ; preds = %dec_label_pc_3420f
  %13 = ptrtoint ptr %dataVoidPtr to i64
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_34252

dec_label_pc_34252:                               ; preds = %dec_label_pc_34285.preheader, %dec_label_pc_34252
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %14 = ptrtoint ptr %storemerge3.reload to i64
  %15 = mul i64 %14, 8
  %16 = add i64 %15, %13
  %17 = add i64 %15, %2
  %18 = inttoptr i64 %17 to ptr
  %19 = load i64, ptr %18, align 8
  %20 = inttoptr i64 %16 to ptr
  store i64 %19, ptr %20, align 8
  %21 = add i64 %14, 1
  %22 = inttoptr i64 %21 to ptr
  %23 = icmp ugt ptr %22, inttoptr (i64 99 to ptr)
  store ptr %22, ptr %storemerge3.reg2mem, align 8
  br i1 %23, label %dec_label_pc_3428f, label %dec_label_pc_34252

dec_label_pc_3428f:                               ; preds = %dec_label_pc_34252
  %24 = bitcast ptr %dataVoidPtr to ptr
  call void @printStructLine(ptr %24)
  %25 = bitcast ptr %dataVoidPtr to ptr
  call void @free(ptr %25)
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %1, %26
  br i1 %27, label %dec_label_pc_342c2, label %dec_label_pc_342bd

dec_label_pc_342bd:                               ; preds = %dec_label_pc_3428f
  call void @__stack_chk_fail()
  br label %dec_label_pc_342c2

dec_label_pc_342c2:                               ; preds = %dec_label_pc_342bd, %dec_label_pc_3428f
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

