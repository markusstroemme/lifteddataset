@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_28a68:
  %0 = alloca i64, align 8
  %phitmp.le.pre-phi.reg2mem = alloca ptr, align 8
  %storemerge35.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = and i64 %1, 4294967295
  %3 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge35.reg2mem, align 8
  br label %dec_label_pc_28a80

dec_label_pc_28a80:                               ; preds = %dec_label_pc_28a80, %dec_label_pc_28a68
  %storemerge35.reload = load i64, ptr %storemerge35.reg2mem, align 8
  %4 = mul i64 %storemerge35.reload, 8
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i64 5, ptr %6, align 8
  %7 = add nuw nsw i64 %storemerge35.reload, 1
  %exitcond = icmp eq i64 %7, 100
  store i64 %7, ptr %storemerge35.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_28aa6, label %dec_label_pc_28a80

dec_label_pc_28aa6:                               ; preds = %dec_label_pc_28a80
  %8 = icmp eq i64 %3, 0
  br i1 %8, label %dec_label_pc_28aa6.dec_label_pc_28ae5_crit_edge, label %dec_label_pc_28aad

dec_label_pc_28aa6.dec_label_pc_28ae5_crit_edge:  ; preds = %dec_label_pc_28aa6
  %.pre = inttoptr i64 %3 to ptr
  store ptr %.pre, ptr %phitmp.le.pre-phi.reg2mem, align 8
  br label %dec_label_pc_28ae5

dec_label_pc_28aad:                               ; preds = %dec_label_pc_28aa6
  %9 = inttoptr i64 %2 to ptr
  %10 = inttoptr i64 %3 to ptr
  call void @_ZdaPv(ptr %10, ptr %9)
  store ptr %10, ptr %phitmp.le.pre-phi.reg2mem, align 8
  br label %dec_label_pc_28ae5

dec_label_pc_28ae5:                               ; preds = %dec_label_pc_28aa6.dec_label_pc_28ae5_crit_edge, %dec_label_pc_28aad
  %phitmp.le.pre-phi.reload = load ptr, ptr %phitmp.le.pre-phi.reg2mem, align 8
  %11 = load i64, ptr %phitmp.le.pre-phi.reload, align 8
  call void @printLongLine(i64 %11)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3b8f7:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

