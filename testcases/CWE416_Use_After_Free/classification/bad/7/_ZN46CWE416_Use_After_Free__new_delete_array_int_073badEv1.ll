@global_var_4a944 = external constant [4 x i8]
@0 = external global i32
@global_var_6305c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_23f77:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_6305c, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_23fe6, label %dec_label_pc_23f96

dec_label_pc_23f96:                               ; preds = %dec_label_pc_23f77
  %5 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_23fae

dec_label_pc_23fae:                               ; preds = %dec_label_pc_23fae, %dec_label_pc_23f96
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %6 = mul i64 %storemerge1.reload, 4
  %7 = add i64 %6, %5
  %8 = inttoptr i64 %7 to ptr
  store i32 5, ptr %8, align 4
  %9 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_23fd3, label %dec_label_pc_23fae

dec_label_pc_23fd3:                               ; preds = %dec_label_pc_23fae
  %10 = icmp eq i64 %5, 0
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_23fe6, label %dec_label_pc_23fda

dec_label_pc_23fda:                               ; preds = %dec_label_pc_23fd3
  %11 = inttoptr i64 %5 to ptr
  %12 = and i64 %1, 4294967295
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %11, ptr %13)
  %phitmp = inttoptr i64 %5 to ptr
  store ptr %phitmp, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_23fe6

dec_label_pc_23fe6:                               ; preds = %dec_label_pc_23fda, %dec_label_pc_23fd3, %dec_label_pc_23f77
  %14 = load i32, ptr @global_var_6305c, align 4
  %15 = zext i32 %14 to i64
  %16 = icmp eq i32 %14, 5
  %17 = icmp eq i1 %16, false
  store i64 %15, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_23ffe, label %dec_label_pc_23ff1

dec_label_pc_23ff1:                               ; preds = %dec_label_pc_23fe6
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %18 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %18)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_23ffe

dec_label_pc_23ffe:                               ; preds = %dec_label_pc_23ff1, %dec_label_pc_23fe6
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

