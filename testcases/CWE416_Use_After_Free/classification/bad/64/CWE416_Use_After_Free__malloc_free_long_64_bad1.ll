@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_11ace:
  %storemerge1.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-32, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  store i64 %2, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br i1 %4, label %dec_label_pc_11b1c, label %dec_label_pc_11b08

dec_label_pc_11b08:                               ; preds = %dec_label_pc_11ace
  call void @exit(i32 -1)
  unreachable

dec_label_pc_11b1c:                               ; preds = %dec_label_pc_11ace, %dec_label_pc_11b1c
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %.reload = load i64, ptr %.reg2mem, align 8
  %5 = mul i64 %storemerge1.reload, 8
  %6 = add i64 %5, %.reload
  %7 = inttoptr i64 %6 to ptr
  store i64 5, ptr %7, align 8
  %8 = add nuw nsw i64 %storemerge1.reload, 1
  %9 = load i64, ptr %stack_var_-32, align 8
  %exitcond = icmp eq i64 %8, 100
  store i64 %9, ptr %.reg2mem, align 8
  store i64 %8, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_11b3e, label %dec_label_pc_11b1c

dec_label_pc_11b3e:                               ; preds = %dec_label_pc_11b1c
  %10 = inttoptr i64 %9 to ptr
  call void @free(ptr %10)
  %11 = bitcast ptr %stack_var_-32 to ptr
  call void @anon1(ptr nonnull %11)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_11b6b, label %dec_label_pc_11b66

dec_label_pc_11b66:                               ; preds = %dec_label_pc_11b3e
  call void @__stack_chk_fail()
  br label %dec_label_pc_11b6b

dec_label_pc_11b6b:                               ; preds = %dec_label_pc_11b66, %dec_label_pc_11b3e
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_11cbe:
  %0 = ptrtoint ptr %dataVoidPtr to i64
  call void @printLongLine(i64 %0)
  ret void
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3b8f7:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

