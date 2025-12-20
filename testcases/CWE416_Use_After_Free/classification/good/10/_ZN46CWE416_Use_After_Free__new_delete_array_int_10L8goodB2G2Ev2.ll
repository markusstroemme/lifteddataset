@0 = external global i32
@global_var_630a8 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_248b2:
  %0 = alloca i64, align 8
  %rax.1.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_630a8, align 4
  %3 = icmp eq i32 %2, 0
  store i64 0, ptr %rax.1.reg2mem, align 8
  br i1 %3, label %dec_label_pc_24920, label %dec_label_pc_248d0

dec_label_pc_248d0:                               ; preds = %dec_label_pc_248b2
  %4 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_248e8

dec_label_pc_248e8:                               ; preds = %dec_label_pc_248e8, %dec_label_pc_248d0
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %5 = mul i64 %storemerge1.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 5, ptr %7, align 4
  %8 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2490d, label %dec_label_pc_248e8

dec_label_pc_2490d:                               ; preds = %dec_label_pc_248e8
  %9 = icmp eq i64 %4, 0
  store i64 %6, ptr %rax.1.reg2mem, align 8
  br i1 %9, label %dec_label_pc_24920, label %dec_label_pc_24914

dec_label_pc_24914:                               ; preds = %dec_label_pc_2490d
  %10 = inttoptr i64 %4 to ptr
  %11 = and i64 %1, 4294967295
  %12 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %10, ptr %12)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.1.reg2mem, align 8
  br label %dec_label_pc_24920

dec_label_pc_24920:                               ; preds = %dec_label_pc_24914, %dec_label_pc_2490d, %dec_label_pc_248b2
  %rax.1.reload = load i64, ptr %rax.1.reg2mem, align 8
  ret i64 %rax.1.reload
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

