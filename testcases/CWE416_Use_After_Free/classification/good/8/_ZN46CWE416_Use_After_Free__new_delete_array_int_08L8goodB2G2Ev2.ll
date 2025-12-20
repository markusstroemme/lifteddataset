define i32 @staticReturnsTrue.404() local_unnamed_addr {
dec_label_pc_2421d:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2435d:
  %0 = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @staticReturnsTrue.404()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_243cf, label %dec_label_pc_2437f

dec_label_pc_2437f:                               ; preds = %dec_label_pc_2435d
  %6 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_24397

dec_label_pc_24397:                               ; preds = %dec_label_pc_24397, %dec_label_pc_2437f
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %7 = mul i64 %storemerge1.reload, 4
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 5, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_243bc, label %dec_label_pc_24397

dec_label_pc_243bc:                               ; preds = %dec_label_pc_24397
  %11 = icmp eq i64 %6, 0
  br i1 %11, label %dec_label_pc_243cf, label %dec_label_pc_243c3

dec_label_pc_243c3:                               ; preds = %dec_label_pc_243bc
  %12 = inttoptr i64 %6 to ptr
  %13 = and i64 %1, 4294967295
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  br label %dec_label_pc_243cf

dec_label_pc_243cf:                               ; preds = %dec_label_pc_243c3, %dec_label_pc_243bc, %dec_label_pc_2435d
  %15 = call i32 @staticReturnsTrue.404()
  %16 = sext i32 %15 to i64
  ret i64 %16
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

