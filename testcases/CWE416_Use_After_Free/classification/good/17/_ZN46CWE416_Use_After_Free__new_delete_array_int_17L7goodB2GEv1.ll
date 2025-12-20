@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2590a:
  %0 = alloca i64, align 8
  %rax.1.reg2mem = alloca i64, align 8
  %storemerge23.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = and i64 %1, 4294967295
  %3 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge23.reg2mem, align 8
  br label %dec_label_pc_25922

dec_label_pc_25922:                               ; preds = %dec_label_pc_25922, %dec_label_pc_2590a
  %storemerge23.reload = load i64, ptr %storemerge23.reg2mem, align 8
  %4 = mul i64 %storemerge23.reload, 4
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i32 5, ptr %6, align 4
  %7 = add nuw nsw i64 %storemerge23.reload, 1
  %exitcond5 = icmp eq i64 %7, 100
  store i64 %7, ptr %storemerge23.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_25947, label %dec_label_pc_25922

dec_label_pc_25947:                               ; preds = %dec_label_pc_25922
  %8 = icmp eq i64 %3, 0
  store i64 %5, ptr %rax.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_25971.preheader, label %dec_label_pc_2594e

dec_label_pc_2594e:                               ; preds = %dec_label_pc_25947
  %9 = inttoptr i64 %2 to ptr
  %10 = inttoptr i64 %3 to ptr
  call void @_ZdaPv(ptr %10, ptr %9)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.1.reg2mem, align 8
  br label %dec_label_pc_25971.preheader

dec_label_pc_25971.preheader:                     ; preds = %dec_label_pc_25947, %dec_label_pc_2594e
  %rax.1.reload = load i64, ptr %rax.1.reg2mem, align 8
  ret i64 %rax.1.reload
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

