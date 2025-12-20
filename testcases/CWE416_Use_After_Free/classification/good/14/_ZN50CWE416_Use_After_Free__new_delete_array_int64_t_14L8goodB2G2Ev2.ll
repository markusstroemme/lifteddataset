@global_var_320 = external constant [20 x i8]
@0 = external global i32
@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_221ab:
  %0 = alloca i64, align 8
  %rax.1.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_630ac, align 4
  %3 = zext i32 %2 to i64
  %4 = icmp eq i32 %2, 5
  %5 = icmp eq i1 %4, false
  store i64 %3, ptr %rax.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_2221b, label %dec_label_pc_221ca

dec_label_pc_221ca:                               ; preds = %dec_label_pc_221ab
  %6 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_221e2

dec_label_pc_221e2:                               ; preds = %dec_label_pc_221e2, %dec_label_pc_221ca
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %7 = mul i64 %storemerge2.reload, 8
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i64 5, ptr %9, align 8
  %10 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_22208, label %dec_label_pc_221e2

dec_label_pc_22208:                               ; preds = %dec_label_pc_221e2
  %11 = icmp eq i64 %6, 0
  store i64 %8, ptr %rax.1.reg2mem, align 8
  br i1 %11, label %dec_label_pc_2221b, label %dec_label_pc_2220f

dec_label_pc_2220f:                               ; preds = %dec_label_pc_22208
  %12 = inttoptr i64 %6 to ptr
  %13 = and i64 %1, 4294967295
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.1.reg2mem, align 8
  br label %dec_label_pc_2221b

dec_label_pc_2221b:                               ; preds = %dec_label_pc_2220f, %dec_label_pc_22208, %dec_label_pc_221ab
  %rax.1.reload = load i64, ptr %rax.1.reg2mem, align 8
  ret i64 %rax.1.reload
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

