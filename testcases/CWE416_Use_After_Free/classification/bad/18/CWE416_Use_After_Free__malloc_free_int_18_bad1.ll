@global_var_4a944 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_e29a:
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = call ptr @malloc(i32 400)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %3, label %dec_label_pc_e2d8, label %dec_label_pc_e2c4

dec_label_pc_e2c4:                                ; preds = %dec_label_pc_e29a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_e2d8:                                ; preds = %dec_label_pc_e29a, %dec_label_pc_e2d8
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %4 = ptrtoint ptr %storemerge1.reload to i64
  %5 = mul i64 %4, 4
  %6 = add i64 %5, %1
  %7 = inttoptr i64 %6 to ptr
  store i32 5, ptr %7, align 4
  %8 = add i64 %4, 1
  %9 = inttoptr i64 %8 to ptr
  %10 = icmp ugt ptr %9, inttoptr (i64 99 to ptr)
  store ptr %9, ptr %storemerge1.reg2mem, align 8
  br i1 %10, label %dec_label_pc_e2fd, label %dec_label_pc_e2d8

dec_label_pc_e2fd:                                ; preds = %dec_label_pc_e2d8
  call void @free(ptr %0)
  %11 = bitcast ptr %0 to ptr
  %12 = load i32, ptr %11, align 4
  call void @printIntLine(i32 %12)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

