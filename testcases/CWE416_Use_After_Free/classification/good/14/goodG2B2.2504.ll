@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]
@global_var_630ac = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1100a:
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i32, align 4
  %storemerge1.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_11078, label %dec_label_pc_11029

dec_label_pc_11029:                               ; preds = %dec_label_pc_1100a
  %3 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_11052, label %dec_label_pc_1103e

dec_label_pc_1103e:                               ; preds = %dec_label_pc_11029
  call void @exit(i32 -1)
  unreachable

dec_label_pc_11052:                               ; preds = %dec_label_pc_11029, %dec_label_pc_11052
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %7 = mul i64 %storemerge1.reload, 8
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i64 5, ptr %9, align 8
  %10 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_11078.loopexit, label %dec_label_pc_11052

dec_label_pc_11078.loopexit:                      ; preds = %dec_label_pc_11052
  %.pre = load i32, ptr @global_var_630ac, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store ptr %3, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_11078

dec_label_pc_11078:                               ; preds = %dec_label_pc_11078.loopexit, %dec_label_pc_1100a
  %.reload = load i32, ptr %.reg2mem, align 4
  %11 = icmp eq i32 %.reload, 5
  %12 = icmp eq i1 %11, false
  br i1 %12, label %dec_label_pc_11092, label %dec_label_pc_11083

dec_label_pc_11083:                               ; preds = %dec_label_pc_11078
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %13 = load i64, ptr %stack_var_-24.0.reload, align 8
  call void @printLongLine(i64 %13)
  br label %dec_label_pc_11092

dec_label_pc_11092:                               ; preds = %dec_label_pc_11083, %dec_label_pc_11078
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

