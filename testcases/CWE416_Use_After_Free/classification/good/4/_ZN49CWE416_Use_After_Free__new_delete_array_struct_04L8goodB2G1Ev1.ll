@global_var_320 = external constant [20 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_29dde:
  %0 = alloca i64, align 8
  %rax.1.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_29e0a

dec_label_pc_29e0a:                               ; preds = %dec_label_pc_29e0a, %dec_label_pc_29dde
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %3 = mul i64 %storemerge2.reload, 8
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i32 1, ptr %5, align 4
  %6 = add i64 %4, 4
  %7 = inttoptr i64 %6 to ptr
  store i32 2, ptr %7, align 4
  %8 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_29e49, label %dec_label_pc_29e0a

dec_label_pc_29e49:                               ; preds = %dec_label_pc_29e0a
  %9 = icmp eq i64 %2, 0
  store i64 %4, ptr %rax.1.reg2mem, align 8
  br i1 %9, label %dec_label_pc_29e5c, label %dec_label_pc_29e50

dec_label_pc_29e50:                               ; preds = %dec_label_pc_29e49
  %10 = inttoptr i64 %2 to ptr
  %11 = and i64 %1, 4294967295
  %12 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %10, ptr %12)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.1.reg2mem, align 8
  br label %dec_label_pc_29e5c

dec_label_pc_29e5c:                               ; preds = %dec_label_pc_29e50, %dec_label_pc_29e49
  %rax.1.reload = load i64, ptr %rax.1.reg2mem, align 8
  ret i64 %rax.1.reload
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

