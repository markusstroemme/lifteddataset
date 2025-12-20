@global_var_320 = external constant [20 x i8]
@0 = external global i32
@global_var_630a8 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2b09c:
  %0 = alloca i64, align 8
  %rax.1.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_630a8, align 4
  %3 = icmp eq i32 %2, 0
  store i64 0, ptr %rax.1.reg2mem, align 8
  br i1 %3, label %dec_label_pc_2b124, label %dec_label_pc_2b0ba

dec_label_pc_2b0ba:                               ; preds = %dec_label_pc_2b09c
  %4 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_2b0d2

dec_label_pc_2b0d2:                               ; preds = %dec_label_pc_2b0d2, %dec_label_pc_2b0ba
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %5 = mul i64 %storemerge2.reload, 8
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 1, ptr %7, align 4
  %8 = add i64 %6, 4
  %9 = inttoptr i64 %8 to ptr
  store i32 2, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2b111, label %dec_label_pc_2b0d2

dec_label_pc_2b111:                               ; preds = %dec_label_pc_2b0d2
  %11 = icmp eq i64 %4, 0
  store i64 %6, ptr %rax.1.reg2mem, align 8
  br i1 %11, label %dec_label_pc_2b124, label %dec_label_pc_2b118

dec_label_pc_2b118:                               ; preds = %dec_label_pc_2b111
  %12 = inttoptr i64 %4 to ptr
  %13 = and i64 %1, 4294967295
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.1.reg2mem, align 8
  br label %dec_label_pc_2b124

dec_label_pc_2b124:                               ; preds = %dec_label_pc_2b118, %dec_label_pc_2b111, %dec_label_pc_2b09c
  %rax.1.reload = load i64, ptr %rax.1.reg2mem, align 8
  ret i64 %rax.1.reload
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

