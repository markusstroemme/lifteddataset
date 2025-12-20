@global_var_88248 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_48092:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 2147483647, ptr %stack_var_-20, align 4
  call void @anon0(ptr nonnull %stack_var_-20)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_480dc, label %dec_label_pc_480d7

dec_label_pc_480d7:                               ; preds = %dec_label_pc_48092
  call void @__stack_chk_fail()
  br label %dec_label_pc_480dc

dec_label_pc_480dc:                               ; preds = %dec_label_pc_480d7, %dec_label_pc_48092
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_4815d:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, 2147483647
  br i1 %3, label %dec_label_pc_48195, label %dec_label_pc_4817f

dec_label_pc_4817f:                               ; preds = %dec_label_pc_4815d
  %4 = add i32 %2, 1
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_481a4

dec_label_pc_48195:                               ; preds = %dec_label_pc_4815d
  call void @printLine(ptr @global_var_88248)
  br label %dec_label_pc_481a4

dec_label_pc_481a4:                               ; preds = %dec_label_pc_48195, %dec_label_pc_4817f
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

