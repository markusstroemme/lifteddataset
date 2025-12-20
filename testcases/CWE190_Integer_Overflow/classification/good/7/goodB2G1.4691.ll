@global_var_718c8 = external constant [4 x i8]
@global_var_718cc = external constant [21 x i8]
@global_var_718e8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr
@global_var_a902c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1a8cf:
  %.reg2mem = alloca i32, align 4
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a902c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_1a91d, label %dec_label_pc_1a8fb

dec_label_pc_1a8fb:                               ; preds = %dec_label_pc_1a8cf
  %4 = load ptr, ptr @global_var_a9080, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_718c8, ptr nonnull %stack_var_-20)
  %.pr = load i32, ptr @global_var_a902c, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_1a91d

dec_label_pc_1a91d:                               ; preds = %dec_label_pc_1a8fb, %dec_label_pc_1a8cf
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  br i1 %6, label %dec_label_pc_1a939, label %dec_label_pc_1a928

dec_label_pc_1a928:                               ; preds = %dec_label_pc_1a91d
  call void @printLine(ptr @global_var_718cc)
  br label %dec_label_pc_1a96a

dec_label_pc_1a939:                               ; preds = %dec_label_pc_1a91d
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = icmp eq i16 %7, 32767
  br i1 %8, label %dec_label_pc_1a95b, label %dec_label_pc_1a943

dec_label_pc_1a943:                               ; preds = %dec_label_pc_1a939
  %9 = add i16 %7, 1
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_1a96a

dec_label_pc_1a95b:                               ; preds = %dec_label_pc_1a939
  call void @printLine(ptr @global_var_718e8)
  br label %dec_label_pc_1a96a

dec_label_pc_1a96a:                               ; preds = %dec_label_pc_1a95b, %dec_label_pc_1a943, %dec_label_pc_1a928
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_1a97f, label %dec_label_pc_1a97a

dec_label_pc_1a97a:                               ; preds = %dec_label_pc_1a96a
  call void @__stack_chk_fail()
  br label %dec_label_pc_1a97f

dec_label_pc_1a97f:                               ; preds = %dec_label_pc_1a97a, %dec_label_pc_1a96a
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

