@global_var_4a0b5 = external constant [21 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.398() local_unnamed_addr {
dec_label_pc_1a71c:
  ret i32 1
}

define i32 @staticReturnsFalse.399() local_unnamed_addr {
dec_label_pc_1a72b:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1a7bb:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i32 @staticReturnsTrue.398()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_1a81f, label %dec_label_pc_1a7dd

dec_label_pc_1a7dd:                               ; preds = %dec_label_pc_1a7bb
  %4 = call i64 @_Znam(i64 100)
  %5 = inttoptr i64 %4 to ptr
  %6 = call ptr @memset(ptr %5, i32 65, i32 99)
  %7 = add i64 %4, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  %9 = icmp eq i64 %4, 0
  br i1 %9, label %dec_label_pc_1a81f, label %dec_label_pc_1a813

dec_label_pc_1a813:                               ; preds = %dec_label_pc_1a7dd
  call void @_ZdaPv(ptr %5, ptr inttoptr (i64 65 to ptr))
  br label %dec_label_pc_1a81f

dec_label_pc_1a81f:                               ; preds = %dec_label_pc_1a813, %dec_label_pc_1a7dd, %dec_label_pc_1a7bb
  %10 = call i32 @staticReturnsFalse.399()
  %11 = icmp eq i32 %10, 0
  %12 = icmp eq i1 %11, false
  %13 = zext i1 %12 to i64
  %14 = and i32 %10, -256
  %15 = sext i32 %14 to i64
  %16 = or i64 %13, %15
  %17 = icmp eq i1 %12, false
  store i64 %16, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_1a83c, label %dec_label_pc_1a82d

dec_label_pc_1a82d:                               ; preds = %dec_label_pc_1a81f
  call void @printLine(ptr @global_var_4a0b5)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1a83c

dec_label_pc_1a83c:                               ; preds = %dec_label_pc_1a82d, %dec_label_pc_1a81f
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

