@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32
@global_var_a223c = external local_unnamed_addr global i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_31965:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_a223c, align 4
  %1 = icmp eq i32 %0, 0
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_3199e, label %dec_label_pc_3197f

dec_label_pc_3197f:                               ; preds = %dec_label_pc_31965
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = bitcast ptr %2 to ptr
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3199e, label %dec_label_pc_31994

dec_label_pc_31994:                               ; preds = %dec_label_pc_3197f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3199e:                               ; preds = %dec_label_pc_3197f, %dec_label_pc_31965
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
}

define void @anon1() local_unnamed_addr {
dec_label_pc_319a4:
  %storemerge3.reg2mem = alloca ptr, align 8
  %storemerge24.reg2mem = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @global_var_a223c, align 4
  %2 = call ptr @anon0(ptr null)
  %3 = add i64 %0, -816
  %4 = add i64 %0, -812
  store ptr null, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_319fa

dec_label_pc_319fa:                               ; preds = %dec_label_pc_319a4, %dec_label_pc_319fa
  %storemerge24.reload = load ptr, ptr %storemerge24.reg2mem, align 8
  %5 = ptrtoint ptr %storemerge24.reload to i64
  %6 = mul i64 %5, 8
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 8
  %9 = add i64 %4, %6
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %11 = add i64 %5, 1
  %12 = inttoptr i64 %11 to ptr
  %13 = icmp ugt ptr %12, inttoptr (i64 99 to ptr)
  store ptr %12, ptr %storemerge24.reg2mem, align 8
  br i1 %13, label %dec_label_pc_31a70.preheader, label %dec_label_pc_319fa

dec_label_pc_31a70.preheader:                     ; preds = %dec_label_pc_319fa
  %14 = ptrtoint ptr %2 to i64
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_31a3d

dec_label_pc_31a3d:                               ; preds = %dec_label_pc_31a70.preheader, %dec_label_pc_31a3d
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %15 = ptrtoint ptr %storemerge3.reload to i64
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = add i64 %16, %3
  %19 = inttoptr i64 %18 to ptr
  %20 = load i64, ptr %19, align 8
  %21 = inttoptr i64 %17 to ptr
  store i64 %20, ptr %21, align 8
  %22 = add i64 %15, 1
  %23 = inttoptr i64 %22 to ptr
  %24 = icmp ugt ptr %23, inttoptr (i64 99 to ptr)
  store ptr %23, ptr %storemerge3.reg2mem, align 8
  br i1 %24, label %dec_label_pc_31a7a, label %dec_label_pc_31a3d

dec_label_pc_31a7a:                               ; preds = %dec_label_pc_31a3d
  call void @printStructLine(ptr %2)
  %25 = bitcast ptr %2 to ptr
  call void @free(ptr %25)
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %1, %26
  br i1 %27, label %dec_label_pc_31aad, label %dec_label_pc_31aa8

dec_label_pc_31aa8:                               ; preds = %dec_label_pc_31a7a
  call void @__stack_chk_fail()
  br label %dec_label_pc_31aad

dec_label_pc_31aad:                               ; preds = %dec_label_pc_31aa8, %dec_label_pc_31a7a
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

