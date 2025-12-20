@global_var_4a944 = external constant [4 x i8]
@0 = external global i32
@global_var_630a8 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_247a0:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_630a8, align 4
  %3 = icmp eq i32 %2, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_24825, label %dec_label_pc_247be

dec_label_pc_247be:                               ; preds = %dec_label_pc_247a0
  %4 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_247d6

dec_label_pc_247d6:                               ; preds = %dec_label_pc_247d6, %dec_label_pc_247be
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %5 = mul i64 %storemerge1.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 5, ptr %7, align 4
  %8 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_247fb, label %dec_label_pc_247d6

dec_label_pc_247fb:                               ; preds = %dec_label_pc_247d6
  %9 = icmp eq i64 %4, 0
  br i1 %9, label %dec_label_pc_2480e, label %dec_label_pc_24802

dec_label_pc_24802:                               ; preds = %dec_label_pc_247fb
  %10 = inttoptr i64 %4 to ptr
  %11 = and i64 %1, 4294967295
  %12 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %10, ptr %12)
  br label %dec_label_pc_2480e

dec_label_pc_2480e:                               ; preds = %dec_label_pc_24802, %dec_label_pc_247fb
  %.pr = load i32, ptr @global_var_630a8, align 4
  %13 = icmp eq i32 %.pr, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_24825, label %dec_label_pc_24818

dec_label_pc_24818:                               ; preds = %dec_label_pc_2480e
  %14 = inttoptr i64 %4 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_24825

dec_label_pc_24825:                               ; preds = %dec_label_pc_247a0, %dec_label_pc_24818, %dec_label_pc_2480e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

