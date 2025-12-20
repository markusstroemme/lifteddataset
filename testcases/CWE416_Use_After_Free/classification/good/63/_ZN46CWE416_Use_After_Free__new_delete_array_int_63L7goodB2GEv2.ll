@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_260f0:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-32 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i64 @_Znam(i64 400)
  store i64 %3, ptr %stack_var_-32, align 8
  store i64 0, ptr %storemerge1.reg2mem, align 8
  store i64 %3, ptr %.reg2mem, align 8
  br label %dec_label_pc_2612b

dec_label_pc_2612b:                               ; preds = %dec_label_pc_2612b, %dec_label_pc_260f0
  %.reload = load i64, ptr %.reg2mem, align 8
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %4 = mul i64 %storemerge1.reload, 4
  %5 = add i64 %4, %.reload
  %6 = inttoptr i64 %5 to ptr
  store i32 5, ptr %6, align 4
  %7 = add nuw nsw i64 %storemerge1.reload, 1
  %.pr = load i64, ptr %stack_var_-32, align 8
  %exitcond = icmp eq i64 %7, 100
  store i64 %7, ptr %storemerge1.reg2mem, align 8
  store i64 %.pr, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2614c, label %dec_label_pc_2612b

dec_label_pc_2614c:                               ; preds = %dec_label_pc_2612b
  %8 = icmp eq i64 %.pr, 0
  br i1 %8, label %dec_label_pc_26161, label %dec_label_pc_26155

dec_label_pc_26155:                               ; preds = %dec_label_pc_2614c
  %9 = inttoptr i64 %.pr to ptr
  %10 = and i64 %1, 4294967295
  %11 = inttoptr i64 %10 to ptr
  call void @_ZdaPv(ptr %9, ptr %11)
  br label %dec_label_pc_26161

dec_label_pc_26161:                               ; preds = %dec_label_pc_26155, %dec_label_pc_2614c
  %12 = bitcast ptr %stack_var_-32 to ptr
  %13 = call i64 @anon1(ptr nonnull %12)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %2, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_26182, label %dec_label_pc_2617d

dec_label_pc_2617d:                               ; preds = %dec_label_pc_26161
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_26182

dec_label_pc_26182:                               ; preds = %dec_label_pc_2617d, %dec_label_pc_26161
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_261ef:
  %0 = ptrtoint ptr %arg1 to i64
  ret i64 %0
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

