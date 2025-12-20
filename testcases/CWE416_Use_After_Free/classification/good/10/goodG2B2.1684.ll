@global_var_4a944 = external constant [4 x i8]
@global_var_630a8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_cff7:
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630a8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_d07a, label %dec_label_pc_d015

dec_label_pc_d015:                                ; preds = %dec_label_pc_cff7
  %2 = call ptr @malloc(i32 400)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_d05c.preheader, label %dec_label_pc_d02a

dec_label_pc_d05c.preheader:                      ; preds = %dec_label_pc_d015
  %5 = bitcast ptr %2 to ptr
  %6 = ptrtoint ptr %2 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_d03e

dec_label_pc_d02a:                                ; preds = %dec_label_pc_d015
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d03e:                                ; preds = %dec_label_pc_d03e, %dec_label_pc_d05c.preheader
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %7 = mul i64 %storemerge2.reload, 4
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 5, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_d063, label %dec_label_pc_d03e

dec_label_pc_d063:                                ; preds = %dec_label_pc_d03e
  %.pr = load i32, ptr @global_var_630a8, align 4
  %11 = icmp eq i32 %.pr, 0
  br i1 %11, label %dec_label_pc_d07a, label %dec_label_pc_d06d

dec_label_pc_d06d:                                ; preds = %dec_label_pc_d063
  %12 = load i32, ptr %5, align 4
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_d07a

dec_label_pc_d07a:                                ; preds = %dec_label_pc_cff7, %dec_label_pc_d06d, %dec_label_pc_d063
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

