@global_var_4a944 = external constant [4 x i8]
@global_var_63024 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_c6d6:
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i32, align 4
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63024, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_c743, label %dec_label_pc_c6f5

dec_label_pc_c6f5:                                ; preds = %dec_label_pc_c6d6
  %3 = call ptr @malloc(i32 400)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_c73c.preheader, label %dec_label_pc_c70a

dec_label_pc_c73c.preheader:                      ; preds = %dec_label_pc_c6f5
  %6 = bitcast ptr %3 to ptr
  %7 = ptrtoint ptr %3 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_c71e

dec_label_pc_c70a:                                ; preds = %dec_label_pc_c6f5
  call void @exit(i32 -1)
  unreachable

dec_label_pc_c71e:                                ; preds = %dec_label_pc_c71e, %dec_label_pc_c73c.preheader
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %8 = mul i64 %storemerge2.reload, 4
  %9 = add i64 %8, %7
  %10 = inttoptr i64 %9 to ptr
  store i32 5, ptr %10, align 4
  %11 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_c743.loopexit, label %dec_label_pc_c71e

dec_label_pc_c743.loopexit:                       ; preds = %dec_label_pc_c71e
  %.pre = load i32, ptr @global_var_63024, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store ptr %6, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_c743

dec_label_pc_c743:                                ; preds = %dec_label_pc_c743.loopexit, %dec_label_pc_c6d6
  %.reload = load i32, ptr %.reg2mem, align 4
  %12 = icmp eq i32 %.reload, 5
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_c75b, label %dec_label_pc_c74e

dec_label_pc_c74e:                                ; preds = %dec_label_pc_c743
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %14 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %14)
  br label %dec_label_pc_c75b

dec_label_pc_c75b:                                ; preds = %dec_label_pc_c74e, %dec_label_pc_c743
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

