@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32
@global_var_630a8 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_27b60:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630a8, align 4
  %1 = icmp eq i32 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_27bd5, label %dec_label_pc_27b7e

dec_label_pc_27b7e:                               ; preds = %dec_label_pc_27b60
  %2 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_27b96

dec_label_pc_27b96:                               ; preds = %dec_label_pc_27b96, %dec_label_pc_27b7e
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %3 = mul i64 %storemerge2.reload, 8
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i64 5, ptr %5, align 8
  %6 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %6, 100
  store i64 %6, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_27bbc, label %dec_label_pc_27b96

dec_label_pc_27bbc:                               ; preds = %dec_label_pc_27b96
  %.pr = load i32, ptr @global_var_630a8, align 4
  %7 = icmp eq i32 %.pr, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_27bd5, label %dec_label_pc_27bc6

dec_label_pc_27bc6:                               ; preds = %dec_label_pc_27bbc
  %8 = inttoptr i64 %2 to ptr
  %9 = load i64, ptr %8, align 8
  call void @printLongLine(i64 %9)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_27bd5

dec_label_pc_27bd5:                               ; preds = %dec_label_pc_27b60, %dec_label_pc_27bc6, %dec_label_pc_27bbc
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3b8f7:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

