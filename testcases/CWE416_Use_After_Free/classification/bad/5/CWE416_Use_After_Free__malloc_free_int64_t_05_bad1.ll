@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]
@global_var_63018 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_8a85:
  %storemerge1.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63018, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_8b17, label %dec_label_pc_8aa3

dec_label_pc_8aa3:                                ; preds = %dec_label_pc_8a85
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_8acc, label %dec_label_pc_8ab8

dec_label_pc_8ab8:                                ; preds = %dec_label_pc_8aa3
  call void @exit(i32 -1)
  unreachable

dec_label_pc_8acc:                                ; preds = %dec_label_pc_8aa3, %dec_label_pc_8acc
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %6 = mul i64 %storemerge1.reload, 8
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i64 5, ptr %8, align 8
  %9 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_8afe, label %dec_label_pc_8acc

dec_label_pc_8afe:                                ; preds = %dec_label_pc_8acc
  call void @free(ptr %2)
  %.pr = load i32, ptr @global_var_63018, align 4
  %10 = icmp eq i32 %.pr, 0
  br i1 %10, label %dec_label_pc_8b17, label %dec_label_pc_8b08

dec_label_pc_8b08:                                ; preds = %dec_label_pc_8afe
  %11 = load i64, ptr %2, align 8
  call void @printLongLongLine(i64 %11)
  br label %dec_label_pc_8b17

dec_label_pc_8b17:                                ; preds = %dec_label_pc_8a85, %dec_label_pc_8b08, %dec_label_pc_8afe
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3b925:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

