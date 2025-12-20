@global_var_86406 = external constant [16 x i8]
@global_var_86418 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon4() local_unnamed_addr {
dec_label_pc_34642:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_346a7, label %dec_label_pc_34696

dec_label_pc_34696:                               ; preds = %dec_label_pc_34642
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_346b6

dec_label_pc_346a7:                               ; preds = %dec_label_pc_34642
  call void @printLine(ptr @global_var_86406)
  store i32 0, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_346b6

dec_label_pc_346b6:                               ; preds = %dec_label_pc_346a7, %dec_label_pc_34696
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  call void @anon0(i32 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_346d5, label %dec_label_pc_346d0

dec_label_pc_346d0:                               ; preds = %dec_label_pc_346b6
  call void @__stack_chk_fail()
  br label %dec_label_pc_346d5

dec_label_pc_346d5:                               ; preds = %dec_label_pc_346d0, %dec_label_pc_346b6
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_3472e:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_34782:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_347d6:
  call void @anon3(i32 %data)
  ret void
}

define void @anon3(i32 %data) local_unnamed_addr {
dec_label_pc_3483e:
  %0 = icmp eq i32 %data, 2147483647
  br i1 %0, label %dec_label_pc_3486c, label %dec_label_pc_34856

dec_label_pc_34856:                               ; preds = %dec_label_pc_3483e
  %1 = add i32 %data, 1
  call void @printIntLine(i32 %1)
  br label %dec_label_pc_3487b

dec_label_pc_3486c:                               ; preds = %dec_label_pc_3483e
  call void @printLine(ptr @global_var_86418)
  br label %dec_label_pc_3487b

dec_label_pc_3487b:                               ; preds = %dec_label_pc_3486c, %dec_label_pc_34856
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

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

