@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_23908:
  %0 = alloca i64, align 8
  %rax.1.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_23934

dec_label_pc_23934:                               ; preds = %dec_label_pc_23934, %dec_label_pc_23908
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %3 = mul i64 %storemerge1.reload, 4
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i32 5, ptr %5, align 4
  %6 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %6, 100
  store i64 %6, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_23959, label %dec_label_pc_23934

dec_label_pc_23959:                               ; preds = %dec_label_pc_23934
  %7 = icmp eq i64 %2, 0
  store i64 %4, ptr %rax.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_2396c, label %dec_label_pc_23960

dec_label_pc_23960:                               ; preds = %dec_label_pc_23959
  %8 = inttoptr i64 %2 to ptr
  %9 = and i64 %1, 4294967295
  %10 = inttoptr i64 %9 to ptr
  call void @_ZdaPv(ptr %8, ptr %10)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.1.reg2mem, align 8
  br label %dec_label_pc_2396c

dec_label_pc_2396c:                               ; preds = %dec_label_pc_23960, %dec_label_pc_23959
  %rax.1.reload = load i64, ptr %rax.1.reg2mem, align 8
  ret i64 %rax.1.reload
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

