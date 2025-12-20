@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_36ed4:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %2, label %dec_label_pc_36f30, label %dec_label_pc_36f0b

dec_label_pc_36f0b:                               ; preds = %dec_label_pc_36ed4
  br i1 %5, label %dec_label_pc_36f55, label %dec_label_pc_36f26

dec_label_pc_36f26:                               ; preds = %dec_label_pc_36f0b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_36f30:                               ; preds = %dec_label_pc_36ed4
  br i1 %5, label %dec_label_pc_36f55, label %dec_label_pc_36f4b

dec_label_pc_36f4b:                               ; preds = %dec_label_pc_36f30
  call void @exit(i32 -1)
  unreachable

dec_label_pc_36f55:                               ; preds = %dec_label_pc_36f30, %dec_label_pc_36f0b
  %6 = ptrtoint ptr %stack_var_-8 to i64
  %7 = bitcast ptr %3 to ptr
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_36f62

dec_label_pc_36f62:                               ; preds = %dec_label_pc_36f62, %dec_label_pc_36f55
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %8 = mul i64 %storemerge2.reload, 8
  %9 = add i64 %8, %6
  %10 = add i64 %9, -816
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 8
  %12 = add i64 %9, -812
  %13 = inttoptr i64 %12 to ptr
  store i32 0, ptr %13, align 4
  %14 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %14, 100
  store i64 %14, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_36f98, label %dec_label_pc_36f62

dec_label_pc_36f98:                               ; preds = %dec_label_pc_36f62
  %15 = call ptr @memcpy(ptr %3, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %7)
  call void @free(ptr %3)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_36fe9, label %dec_label_pc_36fe4

dec_label_pc_36fe4:                               ; preds = %dec_label_pc_36f98
  call void @__stack_chk_fail()
  br label %dec_label_pc_36fe9

dec_label_pc_36fe9:                               ; preds = %dec_label_pc_36fe4, %dec_label_pc_36f98
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

