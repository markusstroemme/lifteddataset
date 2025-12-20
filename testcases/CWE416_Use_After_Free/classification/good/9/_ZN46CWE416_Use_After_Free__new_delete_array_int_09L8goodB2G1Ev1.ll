define i64 @anon0() local_unnamed_addr {
dec_label_pc_2458b:
  %0 = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_245c1

dec_label_pc_245c1:                               ; preds = %dec_label_pc_245c1, %dec_label_pc_2458b
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %3 = mul i64 %storemerge1.reload, 4
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i32 5, ptr %5, align 4
  %6 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %6, 100
  store i64 %6, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_245e6, label %dec_label_pc_245c1

dec_label_pc_245e6:                               ; preds = %dec_label_pc_245c1
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %dec_label_pc_245f9, label %dec_label_pc_245ed

dec_label_pc_245ed:                               ; preds = %dec_label_pc_245e6
  %8 = inttoptr i64 %2 to ptr
  %9 = and i64 %1, 4294967295
  %10 = inttoptr i64 %9 to ptr
  call void @_ZdaPv(ptr %8, ptr %10)
  br label %dec_label_pc_245f9

dec_label_pc_245f9:                               ; preds = %dec_label_pc_245ed, %dec_label_pc_245e6
  ret i64 0
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

