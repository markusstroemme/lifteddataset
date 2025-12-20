@global_var_4a084 = external constant [21 x i8]
@0 = external global i32
@global_var_63040 = external local_unnamed_addr global i32
@global_var_630cc = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1a10a:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63040, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1a16a, label %dec_label_pc_1a128

dec_label_pc_1a128:                               ; preds = %dec_label_pc_1a10a
  %2 = call i64 @_Znam(i64 100)
  %3 = inttoptr i64 %2 to ptr
  %4 = call ptr @memset(ptr %3, i32 65, i32 99)
  %5 = add i64 %2, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %dec_label_pc_1a16a, label %dec_label_pc_1a15e

dec_label_pc_1a15e:                               ; preds = %dec_label_pc_1a128
  call void @_ZdaPv(ptr %3, ptr inttoptr (i64 65 to ptr))
  br label %dec_label_pc_1a16a

dec_label_pc_1a16a:                               ; preds = %dec_label_pc_1a15e, %dec_label_pc_1a128, %dec_label_pc_1a10a
  %8 = load i32, ptr @global_var_630cc, align 4
  %9 = icmp eq i32 %8, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_1a183, label %dec_label_pc_1a174

dec_label_pc_1a174:                               ; preds = %dec_label_pc_1a16a
  call void @printLine(ptr @global_var_4a084)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1a183

dec_label_pc_1a183:                               ; preds = %dec_label_pc_1a174, %dec_label_pc_1a16a
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

