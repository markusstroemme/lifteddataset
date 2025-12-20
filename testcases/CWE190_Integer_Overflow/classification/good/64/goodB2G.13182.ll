@global_var_88280 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_4823f:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 2147483647, ptr %stack_var_-20, align 4
  %1 = bitcast ptr %stack_var_-20 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_48289, label %dec_label_pc_48284

dec_label_pc_48284:                               ; preds = %dec_label_pc_4823f
  call void @__stack_chk_fail()
  br label %dec_label_pc_48289

dec_label_pc_48289:                               ; preds = %dec_label_pc_48284, %dec_label_pc_4823f
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_4831a:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, 2147483647
  br i1 %3, label %dec_label_pc_4835a, label %dec_label_pc_48344

dec_label_pc_48344:                               ; preds = %dec_label_pc_4831a
  %4 = add i32 %2, 1
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_48369

dec_label_pc_4835a:                               ; preds = %dec_label_pc_4831a
  call void @printLine(ptr @global_var_88280)
  br label %dec_label_pc_48369

dec_label_pc_48369:                               ; preds = %dec_label_pc_4835a, %dec_label_pc_48344
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

