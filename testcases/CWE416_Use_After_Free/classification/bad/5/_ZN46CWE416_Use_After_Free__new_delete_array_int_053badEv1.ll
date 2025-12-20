@global_var_4a944 = external constant [4 x i8]
@0 = external global i32
@global_var_63058 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_23ab7:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_63058, align 4
  %3 = icmp eq i32 %2, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_23b3c, label %dec_label_pc_23ad5

dec_label_pc_23ad5:                               ; preds = %dec_label_pc_23ab7
  %4 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_23aed

dec_label_pc_23aed:                               ; preds = %dec_label_pc_23aed, %dec_label_pc_23ad5
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %5 = mul i64 %storemerge1.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 5, ptr %7, align 4
  %8 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_23b12, label %dec_label_pc_23aed

dec_label_pc_23b12:                               ; preds = %dec_label_pc_23aed
  %9 = icmp eq i64 %4, 0
  br i1 %9, label %dec_label_pc_23b25, label %dec_label_pc_23b19

dec_label_pc_23b19:                               ; preds = %dec_label_pc_23b12
  %10 = inttoptr i64 %4 to ptr
  %11 = and i64 %1, 4294967295
  %12 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %10, ptr %12)
  br label %dec_label_pc_23b25

dec_label_pc_23b25:                               ; preds = %dec_label_pc_23b19, %dec_label_pc_23b12
  %.pr = load i32, ptr @global_var_63058, align 4
  %13 = icmp eq i32 %.pr, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_23b3c, label %dec_label_pc_23b2f

dec_label_pc_23b2f:                               ; preds = %dec_label_pc_23b25
  %14 = inttoptr i64 %4 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_23b3c

dec_label_pc_23b3c:                               ; preds = %dec_label_pc_23ab7, %dec_label_pc_23b2f, %dec_label_pc_23b25
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

