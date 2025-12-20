@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_36dbd:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-840.0.in.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_36e19, label %dec_label_pc_36df4

dec_label_pc_36df4:                               ; preds = %dec_label_pc_36dbd
  %3 = call ptr @malloc(i32 400)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-840.0.in.reg2mem, align 8
  br i1 %5, label %dec_label_pc_36e3e, label %dec_label_pc_36e0f

dec_label_pc_36e0f:                               ; preds = %dec_label_pc_36df4
  call void @exit(i32 -1)
  unreachable

dec_label_pc_36e19:                               ; preds = %dec_label_pc_36dbd
  %6 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i1 %7, false
  store ptr %6, ptr %stack_var_-840.0.in.reg2mem, align 8
  br i1 %8, label %dec_label_pc_36e3e, label %dec_label_pc_36e34

dec_label_pc_36e34:                               ; preds = %dec_label_pc_36e19
  call void @exit(i32 -1)
  unreachable

dec_label_pc_36e3e:                               ; preds = %dec_label_pc_36e19, %dec_label_pc_36df4
  %9 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-840.0.in.reload = load ptr, ptr %stack_var_-840.0.in.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_36e4b

dec_label_pc_36e4b:                               ; preds = %dec_label_pc_36e4b, %dec_label_pc_36e3e
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %10 = mul i64 %storemerge2.reload, 8
  %11 = add i64 %10, %9
  %12 = add i64 %11, -816
  %13 = inttoptr i64 %12 to ptr
  store i32 0, ptr %13, align 8
  %14 = add i64 %11, -812
  %15 = inttoptr i64 %14 to ptr
  store i32 0, ptr %15, align 4
  %16 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %16, 100
  store i64 %16, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_36e81, label %dec_label_pc_36e4b

dec_label_pc_36e81:                               ; preds = %dec_label_pc_36e4b
  %stack_var_-840.0 = bitcast ptr %stack_var_-840.0.in.reload to ptr
  %17 = call ptr @memcpy(ptr %stack_var_-840.0.in.reload, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %stack_var_-840.0)
  call void @free(ptr %stack_var_-840.0.in.reload)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %0, %18
  br i1 %19, label %dec_label_pc_36ed2, label %dec_label_pc_36ecd

dec_label_pc_36ecd:                               ; preds = %dec_label_pc_36e81
  call void @__stack_chk_fail()
  br label %dec_label_pc_36ed2

dec_label_pc_36ed2:                               ; preds = %dec_label_pc_36ecd, %dec_label_pc_36e81
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

