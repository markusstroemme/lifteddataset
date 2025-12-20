@global_var_7a2b0 = external constant [21 x i8]
@global_var_7c84a = external constant [10 x i8]
@global_var_a22f0 = external local_unnamed_addr global i32
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_368ab:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-840.0.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_a22f0, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_368ef, label %dec_label_pc_368de

dec_label_pc_368de:                               ; preds = %dec_label_pc_368ab
  call void @printLine(ptr @global_var_7a2b0)
  store ptr null, ptr %stack_var_-840.0.reg2mem, align 8
  br label %dec_label_pc_36914

dec_label_pc_368ef:                               ; preds = %dec_label_pc_368ab
  %3 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = bitcast ptr %3 to ptr
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store ptr %4, ptr %stack_var_-840.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_36914, label %dec_label_pc_3690a

dec_label_pc_3690a:                               ; preds = %dec_label_pc_368ef
  call void @exit(i32 -1)
  unreachable

dec_label_pc_36914:                               ; preds = %dec_label_pc_368ef, %dec_label_pc_368de
  %7 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-840.0.reload = load ptr, ptr %stack_var_-840.0.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_36921

dec_label_pc_36921:                               ; preds = %dec_label_pc_36921, %dec_label_pc_36914
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %8 = mul i64 %storemerge2.reload, 8
  %9 = add i64 %8, %7
  %10 = add i64 %9, -816
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 8
  %12 = add i64 %9, -812
  %13 = inttoptr i64 %12 to ptr
  store i32 0, ptr %13, align 4
  %14 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %14, 100
  store i64 %14, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_36957, label %dec_label_pc_36921

dec_label_pc_36957:                               ; preds = %dec_label_pc_36921
  %15 = bitcast ptr %stack_var_-840.0.reload to ptr
  %16 = call ptr @memcpy(ptr %15, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %stack_var_-840.0.reload)
  call void @free(ptr %15)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  br i1 %18, label %dec_label_pc_369a8, label %dec_label_pc_369a3

dec_label_pc_369a3:                               ; preds = %dec_label_pc_36957
  call void @__stack_chk_fail()
  br label %dec_label_pc_369a8

dec_label_pc_369a8:                               ; preds = %dec_label_pc_369a3, %dec_label_pc_36957
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

