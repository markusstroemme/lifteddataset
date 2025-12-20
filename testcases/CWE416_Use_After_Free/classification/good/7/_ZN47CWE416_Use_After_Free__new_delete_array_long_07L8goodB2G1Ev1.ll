@global_var_320 = external constant [20 x i8]
@global_var_4a380 = external constant [21 x i8]
@0 = external global i32
@global_var_63064 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_27192:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i32, align 4
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_63064, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  store i32 %2, ptr %.reg2mem, align 4
  br i1 %4, label %dec_label_pc_27202, label %dec_label_pc_271b1

dec_label_pc_271b1:                               ; preds = %dec_label_pc_27192
  %5 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_271c9

dec_label_pc_271c9:                               ; preds = %dec_label_pc_271c9, %dec_label_pc_271b1
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %6 = mul i64 %storemerge2.reload, 8
  %7 = add i64 %6, %5
  %8 = inttoptr i64 %7 to ptr
  store i64 5, ptr %8, align 8
  %9 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_271ef, label %dec_label_pc_271c9

dec_label_pc_271ef:                               ; preds = %dec_label_pc_271c9
  %10 = icmp eq i64 %5, 0
  br i1 %10, label %dec_label_pc_27202thread-pre-split, label %dec_label_pc_271f6

dec_label_pc_271f6:                               ; preds = %dec_label_pc_271ef
  %11 = inttoptr i64 %5 to ptr
  %12 = and i64 %1, 4294967295
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %11, ptr %13)
  br label %dec_label_pc_27202thread-pre-split

dec_label_pc_27202thread-pre-split:               ; preds = %dec_label_pc_271ef, %dec_label_pc_271f6
  %.pr = load i32, ptr @global_var_63064, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_27202

dec_label_pc_27202:                               ; preds = %dec_label_pc_27202thread-pre-split, %dec_label_pc_27192
  %.reload = load i32, ptr %.reg2mem, align 4
  %14 = icmp eq i32 %.reload, 5
  store i64 5, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_2721c, label %dec_label_pc_2720d

dec_label_pc_2720d:                               ; preds = %dec_label_pc_27202
  call void @printLine(ptr @global_var_4a380)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2721c

dec_label_pc_2721c:                               ; preds = %dec_label_pc_2720d, %dec_label_pc_27202
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

