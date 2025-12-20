@global_var_320 = external constant [20 x i8]
@global_var_49e29 = external constant [21 x i8]
@global_var_4a96e = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_13f6a:
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsFalse()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_13f9d, label %dec_label_pc_13f8c

dec_label_pc_13f8c:                               ; preds = %dec_label_pc_13f6a
  call void @printLine(ptr @global_var_49e29)
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_14005

dec_label_pc_13f9d:                               ; preds = %dec_label_pc_13f6a
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_13ffe.preheader, label %dec_label_pc_13fb2

dec_label_pc_13ffe.preheader:                     ; preds = %dec_label_pc_13f9d
  %5 = bitcast ptr %2 to ptr
  %6 = ptrtoint ptr %2 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_13fc6

dec_label_pc_13fb2:                               ; preds = %dec_label_pc_13f9d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_13fc6:                               ; preds = %dec_label_pc_13fc6, %dec_label_pc_13ffe.preheader
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %7 = mul i64 %storemerge2.reload, 8
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  %10 = add i64 %8, 4
  %11 = inttoptr i64 %10 to ptr
  store i32 2, ptr %11, align 4
  %12 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge2.reg2mem, align 8
  store ptr %5, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_14005, label %dec_label_pc_13fc6

dec_label_pc_14005:                               ; preds = %dec_label_pc_13fc6, %dec_label_pc_13f8c
  %13 = call i32 @globalReturnsTrue()
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_1401f, label %dec_label_pc_14013

dec_label_pc_14013:                               ; preds = %dec_label_pc_14005
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  call void @printStructLine(ptr %stack_var_-24.0.reload)
  br label %dec_label_pc_1401f

dec_label_pc_1401f:                               ; preds = %dec_label_pc_14013, %dec_label_pc_14005
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3b807:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3b82a, label %dec_label_pc_3b81e

dec_label_pc_3b81e:                               ; preds = %dec_label_pc_3b807
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3b82a

dec_label_pc_3b82a:                               ; preds = %dec_label_pc_3b81e, %dec_label_pc_3b807
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_3ba96:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_4a96e, i64 %7, i64 %6)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3bd17:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_3bd26:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

