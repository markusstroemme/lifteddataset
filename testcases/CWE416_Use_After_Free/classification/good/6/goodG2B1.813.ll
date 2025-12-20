@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_8f27:
  %storemerge1.reg2mem = alloca i64, align 8
  %0 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br i1 %3, label %dec_label_pc_8f7f, label %dec_label_pc_8f6b

dec_label_pc_8f6b:                                ; preds = %dec_label_pc_8f27
  call void @exit(i32 -1)
  unreachable

dec_label_pc_8f7f:                                ; preds = %dec_label_pc_8f27, %dec_label_pc_8f7f
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %4 = mul i64 %storemerge1.reload, 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to ptr
  store i64 5, ptr %6, align 8
  %7 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %7, 100
  store i64 %7, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_8faf, label %dec_label_pc_8f7f

dec_label_pc_8faf:                                ; preds = %dec_label_pc_8f7f
  %8 = load i64, ptr %0, align 8
  call void @printLongLongLine(i64 %8)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3b925:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

