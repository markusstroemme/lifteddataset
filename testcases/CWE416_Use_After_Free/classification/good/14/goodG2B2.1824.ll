@global_var_4a944 = external constant [4 x i8]
@global_var_630ac = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_dbe3:
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i32, align 4
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_dc50, label %dec_label_pc_dc02

dec_label_pc_dc02:                                ; preds = %dec_label_pc_dbe3
  %3 = call ptr @malloc(i32 400)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_dc49.preheader, label %dec_label_pc_dc17

dec_label_pc_dc49.preheader:                      ; preds = %dec_label_pc_dc02
  %6 = bitcast ptr %3 to ptr
  %7 = ptrtoint ptr %3 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_dc2b

dec_label_pc_dc17:                                ; preds = %dec_label_pc_dc02
  call void @exit(i32 -1)
  unreachable

dec_label_pc_dc2b:                                ; preds = %dec_label_pc_dc2b, %dec_label_pc_dc49.preheader
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %8 = mul i64 %storemerge2.reload, 4
  %9 = add i64 %8, %7
  %10 = inttoptr i64 %9 to ptr
  store i32 5, ptr %10, align 4
  %11 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_dc50.loopexit, label %dec_label_pc_dc2b

dec_label_pc_dc50.loopexit:                       ; preds = %dec_label_pc_dc2b
  %.pre = load i32, ptr @global_var_630ac, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store ptr %6, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_dc50

dec_label_pc_dc50:                                ; preds = %dec_label_pc_dc50.loopexit, %dec_label_pc_dbe3
  %.reload = load i32, ptr %.reg2mem, align 4
  %12 = icmp eq i32 %.reload, 5
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_dc68, label %dec_label_pc_dc5b

dec_label_pc_dc5b:                                ; preds = %dec_label_pc_dc50
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %14 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %14)
  br label %dec_label_pc_dc68

dec_label_pc_dc68:                                ; preds = %dec_label_pc_dc5b, %dec_label_pc_dc50
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

