@global_var_4a944 = external constant [4 x i8]
@global_var_630a8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_cdbf:
  %storemerge1.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630a8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_ce4e, label %dec_label_pc_cddd

dec_label_pc_cddd:                                ; preds = %dec_label_pc_cdbf
  %2 = call ptr @malloc(i32 400)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_ce06, label %dec_label_pc_cdf2

dec_label_pc_cdf2:                                ; preds = %dec_label_pc_cddd
  call void @exit(i32 -1)
  unreachable

dec_label_pc_ce06:                                ; preds = %dec_label_pc_cddd, %dec_label_pc_ce06
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %6 = mul i64 %storemerge1.reload, 4
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 5, ptr %8, align 4
  %9 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_ce37, label %dec_label_pc_ce06

dec_label_pc_ce37:                                ; preds = %dec_label_pc_ce06
  call void @free(ptr %2)
  %.pr = load i32, ptr @global_var_630a8, align 4
  %10 = icmp eq i32 %.pr, 0
  br i1 %10, label %dec_label_pc_ce4e, label %dec_label_pc_ce41

dec_label_pc_ce41:                                ; preds = %dec_label_pc_ce37
  %phitmp = bitcast ptr %2 to ptr
  %11 = load i32, ptr %phitmp, align 4
  call void @printIntLine(i32 %11)
  br label %dec_label_pc_ce4e

dec_label_pc_ce4e:                                ; preds = %dec_label_pc_cdbf, %dec_label_pc_ce41, %dec_label_pc_ce37
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

