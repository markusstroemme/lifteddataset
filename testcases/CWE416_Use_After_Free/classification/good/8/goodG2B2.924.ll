@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]

define i32 @staticReturnsTrue.87() local_unnamed_addr {
dec_label_pc_9382:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_9606:
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %0 = call i32 @staticReturnsTrue.87()
  %1 = icmp eq i32 %0, 0
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_9677, label %dec_label_pc_9628

dec_label_pc_9628:                                ; preds = %dec_label_pc_9606
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_9651, label %dec_label_pc_963d

dec_label_pc_963d:                                ; preds = %dec_label_pc_9628
  call void @exit(i32 -1)
  unreachable

dec_label_pc_9651:                                ; preds = %dec_label_pc_9628, %dec_label_pc_9651
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %6 = mul i64 %storemerge1.reload, 8
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i64 5, ptr %8, align 8
  %9 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge1.reg2mem, align 8
  store ptr %2, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_9677, label %dec_label_pc_9651

dec_label_pc_9677:                                ; preds = %dec_label_pc_9651, %dec_label_pc_9606
  %10 = call i32 @staticReturnsTrue.87()
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %dec_label_pc_9694, label %dec_label_pc_9685

dec_label_pc_9685:                                ; preds = %dec_label_pc_9677
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %12 = load i64, ptr %stack_var_-24.0.reload, align 8
  call void @printLongLongLine(i64 %12)
  br label %dec_label_pc_9694

dec_label_pc_9694:                                ; preds = %dec_label_pc_9685, %dec_label_pc_9677
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

