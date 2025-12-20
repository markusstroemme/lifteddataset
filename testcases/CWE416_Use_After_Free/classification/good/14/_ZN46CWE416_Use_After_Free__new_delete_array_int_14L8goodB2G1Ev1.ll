@global_var_4a346 = external constant [21 x i8]
@0 = external global i32
@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_252b2:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i32, align 4
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_630ac, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  store i32 %2, ptr %.reg2mem, align 4
  br i1 %4, label %dec_label_pc_25321, label %dec_label_pc_252d1

dec_label_pc_252d1:                               ; preds = %dec_label_pc_252b2
  %5 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_252e9

dec_label_pc_252e9:                               ; preds = %dec_label_pc_252e9, %dec_label_pc_252d1
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %6 = mul i64 %storemerge1.reload, 4
  %7 = add i64 %6, %5
  %8 = inttoptr i64 %7 to ptr
  store i32 5, ptr %8, align 4
  %9 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2530e, label %dec_label_pc_252e9

dec_label_pc_2530e:                               ; preds = %dec_label_pc_252e9
  %10 = icmp eq i64 %5, 0
  br i1 %10, label %dec_label_pc_25321thread-pre-split, label %dec_label_pc_25315

dec_label_pc_25315:                               ; preds = %dec_label_pc_2530e
  %11 = inttoptr i64 %5 to ptr
  %12 = and i64 %1, 4294967295
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %11, ptr %13)
  br label %dec_label_pc_25321thread-pre-split

dec_label_pc_25321thread-pre-split:               ; preds = %dec_label_pc_2530e, %dec_label_pc_25315
  %.pr = load i32, ptr @global_var_630ac, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_25321

dec_label_pc_25321:                               ; preds = %dec_label_pc_25321thread-pre-split, %dec_label_pc_252b2
  %.reload = load i32, ptr %.reg2mem, align 4
  %14 = icmp eq i32 %.reload, 5
  store i64 5, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_2533b, label %dec_label_pc_2532c

dec_label_pc_2532c:                               ; preds = %dec_label_pc_25321
  call void @printLine(ptr @global_var_4a346)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2533b

dec_label_pc_2533b:                               ; preds = %dec_label_pc_2532c, %dec_label_pc_25321
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

