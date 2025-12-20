@0 = external global i32
@global_var_63058 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_23bc9:
  %0 = alloca i64, align 8
  %rax.1.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_63058, align 4
  %3 = icmp eq i32 %2, 0
  store i64 0, ptr %rax.1.reg2mem, align 8
  br i1 %3, label %dec_label_pc_23c37, label %dec_label_pc_23be7

dec_label_pc_23be7:                               ; preds = %dec_label_pc_23bc9
  %4 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_23bff

dec_label_pc_23bff:                               ; preds = %dec_label_pc_23bff, %dec_label_pc_23be7
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %5 = mul i64 %storemerge1.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 5, ptr %7, align 4
  %8 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_23c24, label %dec_label_pc_23bff

dec_label_pc_23c24:                               ; preds = %dec_label_pc_23bff
  %9 = icmp eq i64 %4, 0
  store i64 %6, ptr %rax.1.reg2mem, align 8
  br i1 %9, label %dec_label_pc_23c37, label %dec_label_pc_23c2b

dec_label_pc_23c2b:                               ; preds = %dec_label_pc_23c24
  %10 = inttoptr i64 %4 to ptr
  %11 = and i64 %1, 4294967295
  %12 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %10, ptr %12)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.1.reg2mem, align 8
  br label %dec_label_pc_23c37

dec_label_pc_23c37:                               ; preds = %dec_label_pc_23c2b, %dec_label_pc_23c24, %dec_label_pc_23bc9
  %rax.1.reload = load i64, ptr %rax.1.reg2mem, align 8
  ret i64 %rax.1.reload
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

