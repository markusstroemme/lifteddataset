@global_var_320 = external constant [20 x i8]
@global_var_4a1d6 = external constant [21 x i8]
@0 = external global i32
@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1ec51:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i32, align 4
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_630ac, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  store i32 %2, ptr %.reg2mem, align 4
  br i1 %4, label %dec_label_pc_1ecda, label %dec_label_pc_1ec70

dec_label_pc_1ec70:                               ; preds = %dec_label_pc_1ec51
  %5 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_1ec88

dec_label_pc_1ec88:                               ; preds = %dec_label_pc_1ec88, %dec_label_pc_1ec70
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %6 = mul i64 %storemerge2.reload, 8
  %7 = add i64 %6, %5
  %8 = inttoptr i64 %7 to ptr
  store i32 1, ptr %8, align 4
  %9 = add i64 %7, 4
  %10 = inttoptr i64 %9 to ptr
  store i32 2, ptr %10, align 4
  %11 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1ecc7, label %dec_label_pc_1ec88

dec_label_pc_1ecc7:                               ; preds = %dec_label_pc_1ec88
  %12 = icmp eq i64 %5, 0
  br i1 %12, label %dec_label_pc_1ecdathread-pre-split, label %dec_label_pc_1ecce

dec_label_pc_1ecce:                               ; preds = %dec_label_pc_1ecc7
  %13 = inttoptr i64 %5 to ptr
  %14 = and i64 %1, 4294967295
  %15 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr %13, ptr %15)
  br label %dec_label_pc_1ecdathread-pre-split

dec_label_pc_1ecdathread-pre-split:               ; preds = %dec_label_pc_1ecc7, %dec_label_pc_1ecce
  %.pr = load i32, ptr @global_var_630ac, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_1ecda

dec_label_pc_1ecda:                               ; preds = %dec_label_pc_1ecdathread-pre-split, %dec_label_pc_1ec51
  %.reload = load i32, ptr %.reg2mem, align 4
  %16 = icmp eq i32 %.reload, 5
  store i64 5, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_1ecf4, label %dec_label_pc_1ece5

dec_label_pc_1ece5:                               ; preds = %dec_label_pc_1ecda
  call void @printLine(ptr @global_var_4a1d6)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1ecf4

dec_label_pc_1ecf4:                               ; preds = %dec_label_pc_1ece5, %dec_label_pc_1ecda
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3b807:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3b82a, label %dec_label_pc_3b81e

dec_label_pc_3b81e:                               ; preds = %dec_label_pc_3b807
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3b82a

dec_label_pc_3b82a:                               ; preds = %dec_label_pc_3b81e, %dec_label_pc_3b807
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

