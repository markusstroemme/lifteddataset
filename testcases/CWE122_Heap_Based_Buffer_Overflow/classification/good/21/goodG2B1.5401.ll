@global_var_7a1f8 = external constant [21 x i8]
@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32
@global_var_a2238 = external local_unnamed_addr global i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_3180a:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_a2238, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_31835, label %dec_label_pc_31824

dec_label_pc_31824:                               ; preds = %dec_label_pc_3180a
  call void @printLine(ptr @global_var_7a1f8)
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_31854

dec_label_pc_31835:                               ; preds = %dec_label_pc_3180a
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = bitcast ptr %2 to ptr
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_31854, label %dec_label_pc_3184a

dec_label_pc_3184a:                               ; preds = %dec_label_pc_31835
  call void @exit(i32 -1)
  unreachable

dec_label_pc_31854:                               ; preds = %dec_label_pc_31835, %dec_label_pc_31824
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
}

define void @anon1() local_unnamed_addr {
dec_label_pc_3185a:
  %storemerge3.reg2mem = alloca ptr, align 8
  %storemerge24.reg2mem = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @global_var_a2238, align 4
  %2 = call ptr @anon0(ptr null)
  %3 = add i64 %0, -816
  %4 = add i64 %0, -812
  store ptr null, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_318b0

dec_label_pc_318b0:                               ; preds = %dec_label_pc_3185a, %dec_label_pc_318b0
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
  br i1 %13, label %dec_label_pc_31926.preheader, label %dec_label_pc_318b0

dec_label_pc_31926.preheader:                     ; preds = %dec_label_pc_318b0
  %14 = ptrtoint ptr %2 to i64
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_318f3

dec_label_pc_318f3:                               ; preds = %dec_label_pc_31926.preheader, %dec_label_pc_318f3
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
  br i1 %24, label %dec_label_pc_31930, label %dec_label_pc_318f3

dec_label_pc_31930:                               ; preds = %dec_label_pc_318f3
  call void @printStructLine(ptr %2)
  %25 = bitcast ptr %2 to ptr
  call void @free(ptr %25)
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %1, %26
  br i1 %27, label %dec_label_pc_31963, label %dec_label_pc_3195e

dec_label_pc_3195e:                               ; preds = %dec_label_pc_31930
  call void @__stack_chk_fail()
  br label %dec_label_pc_31963

dec_label_pc_31963:                               ; preds = %dec_label_pc_3195e, %dec_label_pc_31930
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_657a6:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_657c9, label %dec_label_pc_657bd

dec_label_pc_657bd:                               ; preds = %dec_label_pc_657a6
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_657c9

dec_label_pc_657c9:                               ; preds = %dec_label_pc_657bd, %dec_label_pc_657a6
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

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

