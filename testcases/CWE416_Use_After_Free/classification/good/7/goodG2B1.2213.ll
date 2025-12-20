@global_var_320 = external constant [20 x i8]
@global_var_49cf5 = external constant [21 x i8]
@global_var_4a951 = external constant [5 x i8]
@global_var_6302c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_fa13:
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_6302c, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_fa43, label %dec_label_pc_fa32

dec_label_pc_fa32:                                ; preds = %dec_label_pc_fa13
  call void @printLine(ptr @global_var_49cf5)
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_fa92

dec_label_pc_fa43:                                ; preds = %dec_label_pc_fa13
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_fa6c, label %dec_label_pc_fa58

dec_label_pc_fa58:                                ; preds = %dec_label_pc_fa43
  call void @exit(i32 -1)
  unreachable

dec_label_pc_fa6c:                                ; preds = %dec_label_pc_fa43, %dec_label_pc_fa6c
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %6 = mul i64 %storemerge1.reload, 8
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i64 5, ptr %8, align 8
  %9 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge1.reg2mem, align 8
  store ptr %2, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_fa92, label %dec_label_pc_fa6c

dec_label_pc_fa92:                                ; preds = %dec_label_pc_fa6c, %dec_label_pc_fa32
  %10 = load i32, ptr @global_var_6302c, align 4
  %11 = icmp eq i32 %10, 5
  %12 = icmp eq i1 %11, false
  br i1 %12, label %dec_label_pc_faac, label %dec_label_pc_fa9d

dec_label_pc_fa9d:                                ; preds = %dec_label_pc_fa92
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %13 = load i64, ptr %stack_var_-24.0.reload, align 8
  call void @printLongLine(i64 %13)
  br label %dec_label_pc_faac

dec_label_pc_faac:                                ; preds = %dec_label_pc_fa9d, %dec_label_pc_fa92
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

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3b8f7:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

