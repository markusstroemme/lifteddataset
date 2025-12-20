@0 = external global i32
@global_var_6305c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2408d:
  %0 = alloca i64, align 8
  %rax.1.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_6305c, align 4
  %3 = zext i32 %2 to i64
  %4 = icmp eq i32 %2, 5
  %5 = icmp eq i1 %4, false
  store i64 %3, ptr %rax.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_240fc, label %dec_label_pc_240ac

dec_label_pc_240ac:                               ; preds = %dec_label_pc_2408d
  %6 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_240c4

dec_label_pc_240c4:                               ; preds = %dec_label_pc_240c4, %dec_label_pc_240ac
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %7 = mul i64 %storemerge1.reload, 4
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 5, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_240e9, label %dec_label_pc_240c4

dec_label_pc_240e9:                               ; preds = %dec_label_pc_240c4
  %11 = icmp eq i64 %6, 0
  store i64 %8, ptr %rax.1.reg2mem, align 8
  br i1 %11, label %dec_label_pc_240fc, label %dec_label_pc_240f0

dec_label_pc_240f0:                               ; preds = %dec_label_pc_240e9
  %12 = inttoptr i64 %6 to ptr
  %13 = and i64 %1, 4294967295
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.1.reg2mem, align 8
  br label %dec_label_pc_240fc

dec_label_pc_240fc:                               ; preds = %dec_label_pc_240f0, %dec_label_pc_240e9, %dec_label_pc_2408d
  %rax.1.reload = load i64, ptr %rax.1.reg2mem, align 8
  ret i64 %rax.1.reload
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

